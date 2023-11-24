Utils = Utils or {}

function Utils:GetPlayerMoney(src)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)

        return xPlayer.getAccount('bank').money
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)

        return ply.Functions.GetMoney('bank')
    else
        Core.Utils:Print('nil-func', 'Utils:GetPlayerMoney')
        --[[
            Skal give antallet af penge i spillerns bank.
        ]]
    end
end

function Utils:RemovePlayerMoney(src, amount)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)

        xPlayer.removeAccountMoney('bank', amount)
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)

        ply.Functions.RemoveMoney('bank', amount)
    else
        Core.Utils:Print('nil-func', 'Utils:RemovePlayerMoney')
        --[[
            Skal fjerne penge fra spillerens bank
        ]]
    end
end

function Utils:AddPlayerMoney(src, amount)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)

        xPlayer.addAccountMoney('bank', amount)
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)

        ply.Functions.AddMoney('bank', amount)
    else
        Core.Utils:Print('nil-func', 'Utils:AddPlayerMoney')
        --[[
            Skal tilføje penge til spillerens bank
        ]]
    end
end

function Utils:GetRPNameFromIdentifier(identifier)
    if _FRAMEWORK == 'ESX' then
        local name = exports.oxmysql:query_async('SELECT firstname, lastname FROM users WHERE identifier = ?', {identifier})

        if name and name[1] then
            return name[1]
        end

        return nil
    elseif _FRAMEWORK == 'QBCORE' then
        local dbData = exports.oxmysql:query_async('SELECT charinfo FROM players WHERE license = ?', {identifier})

        if dbData and dbData[1] then
            return json.decode(dbData[1].charinfo)
        end

        return nil
    else
        Core.Utils:Print('nil-func', 'Utils:GetRPNameFromIdentifier')
        --[[
            Skal return fornavn og efternavn fra databasen.
        ]]
    end
end

function Utils:GetVehicleFromDB(plate)
    if _FRAMEWORK == 'ESX' then
        local data = exports.oxmysql:query_async('SELECT * FROM owned_vehicles WHERE plate = ?', {plate})

        if data and data[1] then
            return {owner = data[1].owner}
        end

        return nil
    elseif _FRAMEWORK == 'QBCORE' then
        local data = exports.oxmysql:query_async('SELECT * FROM player_vehicles WHERE plate = ?', {plate})

        if data and data[1] then
            return {owner = data[1].license}
        end

        return nil
    else
        Core.Utils:Print('nil-func', 'Utils:GetVehicleFromDB')
        --[[
            Skal return køretøjs info fra databasen.
        ]]
    end
end

function Utils:AddVehicleToDB(identifier, plate)
    if _FRAMEWORK == 'ESX' then
        exports.oxmysql:update('UPDATE owned_vehicles SET owner = ? WHERE plate = ?', {identifier, plate})
    elseif _FRAMEWORK == 'QBCORE' then
        local citizenid = exports.oxmysql:query_async('SELECT citizenid FROM players WHERE license = ?', {identifier})
        exports.oxmysql:update('UPDATE player_vehicles SET license = ?, citizenid = ?, state = 1 WHERE plate = ?', {identifier, citizenid[1].citizenid, plate})
    else
        Core.Utils:Print('nil-func', 'Utils:AddVehicleToDB')
        --[[
            Skal give spilleren bilen.
        ]]
    end
end

function Utils:RemoveVehicleFromDB(plate)
    if _FRAMEWORK == 'ESX' then
        exports.oxmysql:update('UPDATE owned_vehicles SET owner = ? WHERE plate = ?', {'', plate})
    elseif _FRAMEWORK == 'QBCORE' then
        exports.oxmysql:update('UPDATE player_vehicles SET license = ?, citizenid = ? WHERE plate = ?', {'', '', plate})
    else
        Core.Utils:Print('nil-func', 'Utils:RemoveVehicleFromDB')
        --[[
            Skal fjerne bilen fra spilleren.
        ]]
    end
end