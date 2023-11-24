local AC = exports['id_core']:getACUtils()
local playerLoadEvent = 'id_core:playerLoaded'
if _FRAMEWORK == 'ESX' then
    playerLoadEvent = 'esx:playerLoaded'
elseif _FRAMEWORK == 'QBCORE' then
    playerLoadEvent = 'QBCore:Server:OnPlayerLoaded'
end
--[[
    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end
]]


RegisterNetEvent('id_brugtvogn:buyVehicle', function(plate, model, eventCode)
    local src = source
    local buyer
    if _FRAMEWORK == 'ESX' then
        buyer = ESX.GetPlayerFromId(src).identifier
    elseif _FRAMEWORK == 'QBCORE' then
        buyer = QBCore.Functions.GetPlayer(src).PlayerData.license
    end

    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    local vehicle = exports.oxmysql:query_async('SELECT * FROM id_usedcarsdealer WHERE plate = ?', {plate})
    if not vehicle or not vehicle[1] then TriggerClientEvent('id_notify:notify', src, {type = 'error', message = _U('veh_not_found')}) return end
    if getVehicleInStock(plate).inUse then TriggerClientEvent('id_notify:notify', src, {type = 'error', message = _U('veh_in_use')}) return end
    if Utils:GetPlayerMoney(src) < vehicle[1].price then TriggerClientEvent('id_notify:notify', src, {type = 'error', message = _U('not_enough_money')}) return end

    local seller
    if _FRAMEWORK == 'ESX' then
        local a = ESX.GetPlayerFromIdentifier(vehicle[1].seller)
        seller = {src = a.source}
    elseif _FRAMEWORK == 'QBCORE' then
        local a = QBCore.Functions.GetQBPlayers()
        for src in pairs(a) do
            if a[src].PlayerData.license == vehicle[1].seller then
                seller = {src = src}
            end
        end
    end
    Utils:RemovePlayerMoney(src, vehicle[1].price)

    if seller then
        if Config.EnableJob then
            local cut = Core.Utils.Math:Round(Config.Job.DealerCut * vehicle[1].price, 0)
            local money = Core.Utils.Math:Round(vehicle[1].price - cut, 0)
            Utils:AddPlayerMoney(seller.src, money)
            if _FRAMEWORK == 'ESX' and Config.Society.Enable then
                TriggerEvent('esx_addonaccount:getSharedAccount', Config.Society.Name, function(account)
                    account.addMoney(cut)
                end)
            elseif _FRAMEWORK == 'QBCORE' and Config.Society.Enable then
                exports['qb-management']:AddMoney(Config.Job.Name, cut)
            end
            TriggerClientEvent('id_notify:notify', seller.src, {
                type = 'success',
                message = _U('veh_bought', plate, Core.Utils.Math:GroupDigits(money))
            })
        else
            Utils:AddPlayerMoney(seller.src, vehicle[1].price)
            TriggerClientEvent('id_notify:notify', seller.src, {
                type = 'success',
                message = _U('veh_bought', plate, Core.Utils.Math:GroupDigits(vehicle[1].price))
            })
        end
    else
        local accMoney = exports.oxmysql:query_async('SELECT money FROM id_usedcarsdealer_accounts WHERE identifier = ?', {vehicle[1].seller})
        local money = vehicle[1].price

        if Config.EnableJob then
            local cut = Core.Utils.Math:Round(Config.Job.DealerCut * vehicle[1].price, 0)
            money = Core.Utils.Math:Round(money - cut, 0)
            if _FRAMEWORK == 'ESX' then
                TriggerEvent('esx_addonaccount:getSharedAccount', Config.Society.Name, function(account)
                    account.addMoney(cut)
                end)
            elseif _FRAMEWORK == 'QBCORE' and Config.Society.Enable then
                exports['qb-management']:AddMoney(Config.Job.Name, cut)
            end
        end

        if accMoney and accMoney[1] then
            accMoney = accMoney[1].money + money
            exports.oxmysql:update('UPDATE id_usedcarsdealer_accounts SET money = ? WHERE identifier = ?', {money, vehicle[1].seller})
        else
            exports.oxmysql:insert('INSERT INTO id_usedcarsdealer_accounts (identifier, money) VALUES (?,?)', {vehicle[1].seller, money})
        end
    end

    for k,v in pairs(vehiclesInStock) do
        if v.plate == plate then table.remove(vehiclesInStock, k) break end
    end
    exports.oxmysql:query('DELETE FROM id_usedcarsdealer WHERE plate = ?', {plate}, function() TriggerClientEvent('id_brugtvogn:updateVehicles', -1) end)
    Utils:AddVehicleToDB(buyer, plate)
    TriggerClientEvent('id_notify:notify', src, {
        type = 'success',
        message = _U('bought_veh', plate, Core.Utils.Math:GroupDigits(Core.Utils.Math:Round(vehicle[1].price)))
    })
    Core.Logs:SendLog(GetCurrentResourceName()..'::dealer:buyvehicle', _('logs:dealer::buyvehicle', GetPlayerName(src), Core.Utils.Math:GroupDigits(Core.Utils.Math:Round(vehicle[1].price)), plate), src)
end)

RegisterNetEvent('id_brugtvogn:putBackVehicle', function(plate)
    if getVehicleInStock(plate) then
        getVehicleInStock(plate).inUse = false
        TriggerClientEvent('id_brugtvogn:updateVehicles', -1)
    end
end)

RegisterNetEvent('id_brugtvogn:takeOutVehicle', function(plate)
    if getVehicleInStock(plate) then
        getVehicleInStock(plate).inUse = true
        TriggerClientEvent('id_brugtvogn:updateVehicles', -1)
    end
end)


RegisterNetEvent('id_brugtvogn:setVehicleToSale', function(data, vehProps, model, eventCode)
    local src = source

    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    local dbVehicle = Utils:GetVehicleFromDB(data.plate)

    if dbVehicle then
        table.insert(vehiclesInStock, {
            plate = data.plate,
            vehProps = vehProps,
            price = data.price,
            owner = dbVehicle.owner,
            inUse = false
        })
        Utils:RemoveVehicleFromDB(data.plate)
        exports.oxmysql:query('INSERT INTO id_usedcarsdealer (plate, seller, vehProps, price) VALUES (?,?,?,?)', {data.plate, dbVehicle.owner, json.encode(vehProps), data.price}, function()
            TriggerClientEvent('id_brugtvogn:updateVehicles', -1)
            TriggerClientEvent('mythic_notify:client:SendAlert', src, {type = 'success', text = _U('veh_sat_on_sale')})
            Core.Logs:SendLog(GetCurrentResourceName()..'::dealer:sellvehicle', _('logs:dealer::sellvehicle', GetPlayerName(src), vehProps.plate, Core.Utils.Math:GroupDigits(data.price)), src)
        end)
    end
end)

RegisterNetEvent('id_brugtvogn:returnVehicleToOwner', function(plate, model, eventCode)
    local src = source

    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    local owner = getVehicleInStock(plate).owner

    if getVehicleInStock(plate) then
        for k,v in pairs(vehiclesInStock) do
            if v.plate == plate then table.remove(vehiclesInStock, k) break end
        end
        exports.oxmysql:query('DELETE FROM id_usedcarsdealer WHERE plate = ?', {plate}, function() TriggerClientEvent('id_brugtvogn:updateVehicles', -1) end)
        Utils:AddVehicleToDB(owner, plate)
    end
end)

RegisterNetEvent(playerLoadEvent, function(src)
    if source then src = source end
    Wait(10000)
    local ply
    if _FRAMEWORK == 'ESX' then
        ply = ESX.GetPlayerFromId(src).identifier
    elseif _FRAMEWORK == 'QBCORE' then
        ply = QBCore.Functions.GetPlayer(src).PlayerData.license
    end
    local money = 0
    local dbData = exports.oxmysql:query_async('SELECT money FROM id_usedcarsdealer_accounts WHERE identifier = ?', {ply})

    if dbData and dbData[1] then
        money = dbData[1].money
    end

    if money > 0 then TriggerClientEvent('id_core::Utils:ShowNotification', src, _U('has_money_in_account', Core.Utils.Math:GroupDigits(money))) end
end)