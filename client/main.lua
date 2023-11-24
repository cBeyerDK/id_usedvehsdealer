serverEventCode = '3a3Hc5hvBHU$fqsS$m8XW=v4m#--6P2kCGpnPvrPKAnZkmC6CGSsXJmPZEmbTS37GQKLmz6Fm_V^LT3&#BdDvzdbj_vg*9VBUJ-G=afVLkKybB^-nWKe*H?!J!$4D--PW?tS^&529@uFsM_Z+aQ%=tr6aBav4pHz2vmKF&Y#JQ$PPM4sc7ku?QL=hg^T?_WkU?2-%#6Dh?5Y2__?SAgMX#3ktnR!8JaMXV76f2U-Ukz8@_k!u-X3xzBD!T6jD36_&&Agu@+gA$gsTL84!SVVdyEpQtWfKYkR_f&%@uUSPqnc2n5cuDB%MYhzzayVxbb*hxM&H8!!m_Q!wNVqS9Q9am*qg*&!B3Q=QmQQ5Chnw72A3+B@HeMEqA4+33a?Y4KXQ$-rk=Mtecgm^z9&C$uMw+*vmVD3P-jM7-2q$^nMBMcb+ab_Mvn?_m#X-6jnsfxn9%yDtC$T_TyR_t**2U4Dct+hxH#z_T5mR6a3_M*3$#S8Yvg*!Ph8g64w4pzFDk65P5Cu#HmTzLrKYw^97+4ykv4ZrKZ6%r^k677KU@*g^q7-M@HVTZbcv$+NdyRF5C7HR3pztY%-77ukQ$p?FEg%aQT*zbfR!qR5$9WEEGmFLmTb8^MdgPX7npf=kvTCTn=YMm4HNGNE3Vx2Dvz+gb_uhjxvwJs@@Ew8V2sb^BFc*+EVd8A5+5Kx7jJ5RNqQJmSCWvT^PkeF55rEqsus?*dyC=XMRQ&FdWmk_zK*FQHbmY7ex_SGT@7Qyv4$uXA+@BvRHt5tGNt6cmy&tYB^!Z526*=ZP=+m532PbcQZ79h5h^fVjEgjPHJHME?8J6$NpjbdqU!xf%2BS3e9tdBr29-kQy@U_km5%N6LAzwZ&Lt%j^bd75zS62Vg6MBbE^3k&bCUD?p%tS!nhG+5XpDAtbDBEF-^x49#NGau_&!J7qdKFjzS4^HbZ4APYr$+MgN?8NCVmEcb5FBj3cbj=aBRjkGaY=qz6Bb#vHSPbLXBk6knn?8w$J-a?Bc-X8zz$+LCkaJUWyxG+?DBL*8n2_aN6Z%XJ&TNNt!5rRwBW!gyux=$UNZTdH@GCqKy2zT^*zjQtrHPZ?EYheHPs5FkU+AbnBWMRg9sE=bXwFXwNd&=_Ncb$csZhd!vewUg%kUUfEBCRd#jVzkm9UhvLn@&^w=_M9SXnx-Z*XXkHkp!GLPg^4rDQqWv-3SZeu*3!dpmrk-SJ+4dh!HveEyw_9ZNsrpuF*5#aQfuaYp2aDxr?*&Q&^+WgUH@%pmY6&s_Yj%RGg!L^4^ewJxmp$ph-*p=Y6s8RrW6CsMy^zEeMnp$rU2Y-mCFGEpB&*L*9_4_=N&zma@GF?bqN$-X*KdyFfnsu!*_3^2^Nbe3&rswzedm5%kBdfKpjAgsxr$C^pDp4S?yt6+N-Z!*#^39bpktAx$_Zu!Xd5&wW=WumPw3VQ!WBLC_=526AfPeJunZUgzxbLEnf9B5g$rRAqbhCj_35Es!_5A%^XTNt8qp6sMZkkvX74=J-?4h#L*6JDU!wM*dJdNDWr$xR*+qP%wvw2tnVMEmhW^VcAWL$FZupfn!WjY2J5Kxhr^y#Zh$e$9b-bu8GEHjAR%LK*r^rh9CUxHf#MT83Pg6g@RjRbArMbdgAS3F!BQ3Jze4V%G=M9E+Kebf*s!VwHvAV^Tt*Fgr_&&s+8daTauE_cF*qzkc*ddkMn^UBmB@tb!PsjkNDV?-xgP7FwR#jYTYB2uCa!qk*%wg#GXcMV=jCr5hB$GzBH-xp?kh22S%V-?5N94t5Nq^JKkw+@Bktnx6=RgVd+svZ^K8uyj7BJvf*!EXKeHG29?Xjp+8rV5V9-fgXCF5$KfRSbefc9a2x5gCA2r@VCmSSHzkdbw&wJt4h!%X-s9MW9HHCExdh-?DGYjVzU-H$QS-RY9ptE6eRMzKa5xz*3x^V^%9bm@r3RMJ$nqA=D2352CH2YxP7T$J%2s8y-UG*5Ku&NLhX#WHHP!%7FzxnY4*=@9BBGM_S5h_F%Gwf$%rK#k**9mNu6KNzRBvSAa=rEbY@FBAB=9gj3uc9!-v'

--====================
--==    Variables   ==
--====================
local npcSpawned = false
vehiclesSpawned = false
showcaseVehicles = {}
local isInMarker = nil
local showPromp = true
local salesInformation = {price = nil, plate = nil}

-- Blip
if Config.Blip.Enable then
    CreateThread(function()
        local blip = AddBlipForCoord(Config.Blip.Coords)
        SetBlipSprite (blip, Config.Blip.Sprite)
        SetBlipDisplay(blip, Config.Blip.Display)
        SetBlipScale  (blip, Config.Blip.Scale)
        SetBlipColour (blip, Config.Blip.Color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(_U('map_blip'))
        EndTextCommandSetBlipName(blip)
    end)
end

-- NPC Spawn
CreateThread(function()
    while true do
        Wait(1)
        if npcSpawned then return end
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if GetDistanceBetweenCoords(coords, Config.NPC.Pos, false) <= 200 then
            if not npcSpawned then
                createNPC()
            end
        end
    end
end)

function createNPC()
    local npcHash = GetHashKey(Config.NPC.Model)
    RequestModel(npcHash)
    while not HasModelLoaded(npcHash) do
        Wait(10)
    end
    local dealerNPC = CreatePed(4, npcHash, Config.NPC.Pos, Config.NPC.Heading, false, true)
    SetEntityHeading(dealerNPC, Config.NPC.Heading)
    FreezeEntityPosition(dealerNPC, true)
    SetEntityInvincible(dealerNPC, true)
	SetBlockingOfNonTemporaryEvents(dealerNPC, true)
    while not HasAnimDictLoaded('anim@heists@heist_corona@team_idles@male_a') do
        RequestAnimDict('anim@heists@heist_corona@team_idles@male_a')
        Wait(10)
    end
    TaskPlayAnim(dealerNPC, 'anim@heists@heist_corona@team_idles@male_a', 'idle', 2.0, 2.0, -1, 1, 0, false, false, false)
    RemoveAnimDict('anim@heists@heist_corona@team_idles@male_a')
    TriggerEvent('cb_esx_selldrugs:addBlacklistedPed', dealerNPC)
    npcSpawned = true
    SetModelAsNoLongerNeeded(npcHash)
end




CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)

        if GetDistanceBetweenCoords(coords, Config.NPC.Pos, true) <= 2.0 then
            Core.Utils:DrawText3Ds(Config.NPC.Pos.x,Config.NPC.Pos.y,Config.NPC.Pos.z+1.0, _U('interact_npc'))
            if IsControlJustReleased(0, 51) then
                openShopMenu()
            end
        end
    end
end)

function openShopMenu()
    if _FRAMEWORK == 'ESX' then
        ESX.UI.Menu.CloseAll()

        local elements = {{label = _U('menu_shop_buy'), value = 'buy_veh'}}

        if not Config.EnableJob then
            table.insert(elements, {
                label = _U('menu_shop_sell'), value = 'sell_veh'
            })
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'brugtvogn_sell_menu', {
            title = _U('menu_shop_title'),
            align = 'left',
            elements = elements
        }, function(data, menu)
            if data.current.value == 'buy_veh' then
                menu.close()
                ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'brugtvogn_sell_menu_buy', {
                    title = _U('menu_shop_buy_veh')
                }, function(data2, menu2)
                    if data2.value and string.len(data2.value) > 0 and string.len(data2.value) <= 8 then
                        local plate = data2.value:upper():gsub('-', ' ')
                        menu2.close()
                        local model = 'NULL'
                        for k,v in pairs(showcaseVehicles) do
                            local vehProps = ESX.Game.GetVehicleProperties(v.veh)
                            if vehProps.plate == plate then
                                model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                                break
                            end
                        end
                        TriggerServerEvent('id_brugtvogn:buyVehicle', plate, model, serverEventCode)
                    else
                        exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                    end
                end, function(data2, menu2)
                    menu2.close()
                end)
            elseif data.current.value == 'sell_veh' then
                menu.close()
                if salesInformation.price then Core.Utils:ShowNotification(_U('missing_veh', salesInformation.plate)) showPromp = true return end
                Core.Utils:TriggerServerCallback('id_brugtvogn:isThereSpace', function(space) 
                    if space then
                        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'brugtvogn_sell_veh_plate', {
                            title = _U('dealer_menu_sell_plate')
                        }, function(data2, menu2)
                            if data2.value and string.len(data2.value) > 0 and string.len(data2.value) <= 8 then
                                Core.Utils:TriggerServerCallback('id_brugtvogn:isVehicleReal', function(isReal)
                                    if isReal == true then
                                        menu2.close()
                                        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'brugtvogn_sell_veh_price', {
                                            title = _U('dealer_menu_sell_price')
                                        }, function(data3, menu3)
                                            local num = tonumber(data3.value)
                                            if num then
                                                if (Config.Dealer.MaxPrice == -1 or num <= Config.Dealer.MaxPrice) and num >= Config.Dealer.MinPrice then
                                                    salesInformation.price = num
                                                    salesInformation.plate = data2.value:upper():gsub('-', ' ')
                                                    Core.Utils:ShowNotification(_U('sell_veh_nojob', ESX.Math.GroupDigits(num)))
                                                    Core.Utils:ShowNotification(_U('cancel_sell'))
                                                    menu3.close()
                                                    showPromp = true
                                                else
                                                    exports['mythic_notify']:DoLongHudText('error', _U('not_correct_price'))
                                                end
                                            else
                                                exports['mythic_notify']:DoHudText('error', _U('not_number'))
                                            end
                                        end, function(data3, menu3)
                                            menu3.close()
                                            showPromp = true
                                        end)
                                    elseif isReal == 'notOwner' then
                                        exports['mythic_notify']:DoHudText('error', _U('not_your_veh'))
                                    else
                                        exports['mythic_notify']:DoHudText('error', _U('veh_not_found'))
                                    end
                                end, data2.value:upper():gsub('-', ' '))
                            else
                                exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                            end
                        end, function(data2, menu2)
                            menu2.close()
                            showPromp = true
                        end)
                    else
                        Core.Utils:ShowNotification(_U('no_more_space'))
                    end
                end)
            end
        end, function(data, menu)
            menu.close()
        end)
    elseif _FRAMEWORK == 'QBCORE' then
        local menuTbl = {
            {
                header = _U('menu_shop_title'),
                icon = 'fas fa-car-alt',
                isMenuHeader = true
            },
            {
                header = _U('menu_shop_buy'),
                icon = 'fas fa-shopping-basket',
                params = {
                    isAction = true,
                    event = function(data)
                        local dialog = exports['qb-input']:ShowInput({
                            header = _U('menu_shop_buy_veh'),
                            submitText = _U('menu_shop_submit_buy'),
                            inputs = {
                                {
                                    text = _U('menu_shop_buy_veh'),
                                    name = "plate",
                                    type = "text",
                                    isRequired = true,
                                }
                            }
                        })
                
                        if dialog ~= nil then
                            if dialog.plate and string.len(dialog.plate) > 0 and string.len(dialog.plate) <= 8 then
                                local plate = dialog.plate:upper():gsub('-', ' ')
                                local model = 'NULL'
                                for k,v in pairs(showcaseVehicles) do
                                    local vehProps = QBCore.Functions.GetVehicleProperties(v.veh)
                                    if vehProps.plate == plate then
                                        model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                                        break
                                    end
                                end
                                TriggerServerEvent('id_brugtvogn:buyVehicle', plate, model, serverEventCode)
                            else
                                exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                            end
                        end
                    end
                }
            }
        }

        if not Config.EnableJob then
            table.insert(menuTbl, {
                header = _U('menu_shop_sell'),
                icon = 'fas fa-hand-holding-usd',
                params = {
                    isAction = true,
                    event = function(data)
                        if salesInformation.price then Core.Utils:ShowNotification(_U('missing_veh', salesInformation.plate)) return end
                        
                        local dialog = exports['qb-input']:ShowInput({
                            header = _U('dealer_menu_sell-veh'),
                            submitText = _U('dealer_menu_sell_submit'),
                            inputs = {
                                {
                                    text = _U('dealer_menu_sell_plate'),
                                    name = "plate",
                                    type = "text",
                                    isRequired = true,
                                },
                                {
                                    text = _U('dealer_menu_sell_price'),
                                    name = "price",
                                    type = "number",
                                    isRequired = true,
                                }
                            }
                        })
                
                        if dialog ~= nil then
                            if dialog.plate and string.len(dialog.plate) > 0 and string.len(dialog.plate) <= 8 then
                                Core.Utils:TriggerServerCallback('id_brugtvogn:isVehicleReal', function(isReal)
                                    if isReal == true then
                                        local num = tonumber(dialog.price)
                                        if num then
                                            if (Config.Dealer.MaxPrice == -1 or num <= Config.Dealer.MaxPrice) and num >= Config.Dealer.MinPrice then
                                                salesInformation.price = num
                                                salesInformation.plate = dialog.plate:upper():gsub('-', ' ')
                                                Core.Utils:ShowNotification(_U('sell_veh_nojob', Core.Utils.Math:GroupDigits(num)))
                                                Core.Utils:ShowNotification(_U('cancel_sell'))
                                            else
                                                exports['mythic_notify']:DoLongHudText('error', _U('not_correct_price'))
                                            end
                                        else
                                            exports['mythic_notify']:DoHudText('error', _U('not_number'))
                                        end
                                    elseif isReal == 'notOwner' then
                                        exports['mythic_notify']:DoHudText('error', _U('not_your_veh'))
                                    else
                                        exports['mythic_notify']:DoHudText('error', _U('veh_not_found'))
                                    end
                                end, dialog.plate:upper():gsub('-', ' '))
                            else
                                exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                            end
                        end
                    end
                }
            })
        end

        exports['qb-menu']:openMenu(menuTbl)
    end
end

-- Opret biler
CreateThread(function()
    while true do
        local sleep = 1000
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)

        if GetDistanceBetweenCoords(coords, Config.Blip.Coords, false) <= 50 then
            if not vehiclesSpawned then
                updateVehicles()
            end
        end

        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        local sleep = 1000
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)

        for k,v in pairs(showcaseVehicles) do
            local vehCoords = GetEntityCoords(v.veh)
            if GetDistanceBetweenCoords(coords, vehCoords, true) <= 3.0 then
                sleep = 1
                local vehProps = (_FRAMEWORK == 'ESX' and ESX.Game.GetVehicleProperties(v.veh) or _FRAMEWORK == 'QBCORE' and QBCore.Functions.GetVehicleProperties(v.veh))
                Core.Utils:DrawText3D(vector3(vehCoords.x, vehCoords.y, vehCoords.z + 0.5), _U('veh_info', GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model)), vehProps.plate, Core.Utils.Math:GroupDigits(v.price)), 0.7, 0)
            end
        end

        Wait(sleep)
    end
end)

function updateVehicles()
    if #showcaseVehicles > 0 then
        for k,v in pairs(showcaseVehicles) do
            SetEntityAsMissionEntity(v.veh, true, true)
            DeleteVehicle(v.veh)
        end
    end
    showcaseVehicles = {}
    Citizen.Wait(100)
    Core.Utils:TriggerServerCallback('id_brugtvogn:getVehiclesInStock', function(vehicles)
        vehiclesSpawned = true
        for i, veh in pairs(vehicles) do
            if not veh.inUse then
                if _FRAMEWORK == 'ESX' then
                    ESX.Game.SpawnLocalVehicle(veh.vehProps.model, vector3(Config.Dealer.Loc[i].x, Config.Dealer.Loc[i].y, Config.Dealer.Loc[i].z), Config.Dealer.Loc[i].w, function(vehicle)
                        ESX.Game.SetVehicleProperties(vehicle, veh.vehProps)
                        PlaceObjectOnGroundProperly(vehicle)
                        FreezeEntityPosition(vehicle, true)
                        table.insert(showcaseVehicles, {veh = vehicle, price = veh.price})
                    end)
                elseif _FRAMEWORK == 'QBCORE' then
                    QBCore.Functions.SpawnVehicle(veh.vehProps.model, function(vehicle)
                        QBCore.Functions.SetVehicleProperties(vehicle, veh.vehProps)
                        PlaceObjectOnGroundProperly(vehicle)
                        FreezeEntityPosition(vehicle, true)
                        table.insert(showcaseVehicles, {veh = vehicle, price = veh.price})
                    end, Config.Dealer.Loc[i], false)
                end
            end
        end
    end)
end

-- Job ting
CreateThread(function()
    if not Config.EnableJob then return end
    while true do
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local sleep = 1000

        if Utils:HasPlayerGotJob() then
            sleep = 1

            if GetDistanceBetweenCoords(coords, Config.Dealer.Menu.pos, false) <= Config.DrawDistance then
                DrawMarker(Config.Dealer.Menu.type, Config.Dealer.Menu.pos,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                Config.Dealer.Menu.scale,
                Config.Dealer.Menu.rgba[1], Config.Dealer.Menu.rgba[2], Config.Dealer.Menu.rgba[3], Config.Dealer.Menu.rgba[4],
                Config.Dealer.Menu.bobUpAndDown, Config.Dealer.Menu.faceCamera, 2, Config.Dealer.Menu.rotate, nil, nil, false)

                if GetDistanceBetweenCoords(coords, Config.Dealer.Menu.pos, true) <= Config.Dealer.Menu.scale.x then
                    isInMarker = 'dealerMenu'
                    if showPromp then exports['id_helpnotify']:showUI(_U('dealer_menu_promp')) end
                    if IsControlJustReleased(0, 51) and showPromp then
                        showPromp = false
                        exports['id_helpnotify']:hideUI()
                        openDealerMenu()
                    end
                elseif isInMarker == 'dealerMenu' then
                    if _FRAMEWORK == 'ESX' then ESX.UI.Menu.CloseAll() end
                    isInMarker = nil
                    showPromp = true
                    exports['id_helpnotify']:hideUI()
                end
            end

            if GetDistanceBetweenCoords(coords, Config.Showroom.Marker.pos, false) <= Config.DrawDistance then
                DrawMarker(Config.Showroom.Marker.type, Config.Showroom.Marker.pos,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                Config.Showroom.Marker.scale,
                Config.Showroom.Marker.rgba[1], Config.Showroom.Marker.rgba[2], Config.Showroom.Marker.rgba[3], Config.Showroom.Marker.rgba[4],
                Config.Showroom.Marker.bobUpAndDown, Config.Showroom.Marker.faceCamera, 2, Config.Showroom.Marker.rotate, nil, nil, false)

                if GetDistanceBetweenCoords(coords, Config.Showroom.Marker.pos, true) <= Config.Showroom.Marker.scale.x then
                    isInMarker = 'showroomMenu'
                    if showPromp then exports['id_helpnotify']:showUI(_U('showroom_menu_promp')) end
                    if IsControlJustReleased(0, 51) and showPromp then
                        showPromp = false
                        exports['id_helpnotify']:hideUI()
                        openShowroomMenu()
                    end
                elseif isInMarker == 'showroomMenu' then
                    if _FRAMEWORK == 'ESX' then ESX.UI.Menu.CloseAll() end
                    isInMarker = nil
                    showPromp = true
                    exports['id_helpnotify']:hideUI()
                end
            end

            if GetDistanceBetweenCoords(coords, Config.Showroom.Deleter.pos, false) <= Config.DrawDistance then
                DrawMarker(Config.Showroom.Deleter.type, Config.Showroom.Deleter.pos,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                Config.Showroom.Deleter.scale,
                Config.Showroom.Deleter.rgba[1], Config.Showroom.Deleter.rgba[2], Config.Showroom.Deleter.rgba[3], Config.Showroom.Deleter.rgba[4],
                Config.Showroom.Deleter.bobUpAndDown, Config.Showroom.Deleter.faceCamera, 2, Config.Showroom.Deleter.rotate, nil, nil, false)

                if GetDistanceBetweenCoords(coords, Config.Showroom.Deleter.pos, true) <= Config.Showroom.Deleter.scale.x and IsPedInAnyVehicle(playerPed, false) then
                    isInMarker = 'showroomDeleter'
                    exports['id_helpnotify']:showUI(_U('showroom_deleter_promp'))
                    if IsControlJustReleased(0, 51) then
                        local vehicle = GetVehiclePedIsIn(playerPed, false)
                        local vehPlate = ''
                        if _FRAMEWORK == 'ESX' then
                            vehPlate = ESX.Game.GetVehicleProperties(vehicle).plate
                        elseif _FRAMEWORK == 'QBCORE' then
                            vehPlate = QBCore.Functions.GetPlate(vehicle)
                        end

                        if salesInformation.price then
                            if vehPlate:upper() == salesInformation.plate:upper() then
                                local vehProps = (_FRAMEWORK == 'ESX' and ESX.Game.GetVehicleProperties(vehicle) or _FRAMEWORK == 'QBCORE' and QBCore.Functions.GetVehicleProperties(vehicle))
                                local model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                                vehProps.dirtLevel = 0.0000000001
                                TriggerServerEvent('id_brugtvogn:setVehicleToSale', salesInformation, vehProps, model, serverEventCode)
                                salesInformation = {price = nil, plate = nil}
                            end
                        else
                            TriggerServerEvent('id_brugtvogn:putBackVehicle', vehPlate)
                        end
                        SetEntityAsMissionEntity(vehicle, true, true)
                        DeleteVehicle(vehicle)
                    end
                elseif isInMarker == 'showroomDeleter' then
                    if _FRAMEWORK == 'ESX' then ESX.UI.Menu.CloseAll() end
                    isInMarker = nil
                    showPromp = true
                    exports['id_helpnotify']:hideUI()
                end
            end

            if _FRAMEWORK == 'ESX' and ESX.PlayerData.job.grade_name == 'boss' then
                if GetDistanceBetweenCoords(coords, Config.Dealer.BossMenu, false) <= Config.DrawDistance then
                    DrawMarker(22, Config.Dealer.BossMenu,
                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                    0.7, 0.7, 0.7,
                    Config.Dealer.Menu.rgba[1], Config.Dealer.Menu.rgba[2], Config.Dealer.Menu.rgba[3], Config.Dealer.Menu.rgba[4],
                    false, true, 2, false, nil, nil, false)

                    if GetDistanceBetweenCoords(coords, Config.Dealer.BossMenu, true) <= 0.7 then
                        isInMarker = 'bossMenu'
                        if showPromp then exports['id_helpnotify']:showUI(_U('boss_menu_promp')) end
                        if IsControlJustReleased(0, 51) and showPromp then
                            showPromp = false
                            exports['id_helpnotify']:hideUI()
                            TriggerEvent('esx_society:openBossMenu', 'brugtvogn', function(data, menu)
                                menu.close()
                                showPromp = true
                            end)
                        end
                    elseif isInMarker == 'bossMenu' then
                        ESX.UI.Menu.CloseAll()
                        isInMarker = nil
                        showPromp = true
                        exports['id_helpnotify']:hideUI()
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

function openDealerMenu()
    if _FRAMEWORK == 'ESX' then
        ESX.UI.Menu.CloseAll()

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'brugtvogn_dealer_menu', {
            title = _U('dealer_menu_title'),
            align = 'left',
            elements = {
                {label = _U('dealer_menu_list-veh'), value = 'list_veh'},
                {label = _U('dealer_menu_sell-veh'), value = 'sell_veh'},
        }}, function(data, menu)
            if data.current.value == 'list_veh' then
                menu.close()
                Core.Utils:TriggerServerCallback('id_brugtvogn:getVehiclesList', function(vehicles)
                    local elements2 = {
                        head = {_U('dealer_menu_list_owner'), _U('dealer_menu_list_veh'), _U('dealer_menu_list_plate'), _U('dealer_menu_list_price'), _U('dealer_menu_list_inuse'), _U('dealer_menu_list_actions')},
                        rows = {}
                    }

                    for k,v in pairs(vehicles) do
                        table.insert(elements2.rows, {
                            data = v,
                            cols = {
                                v.owner,
                                GetLabelText(GetDisplayNameFromVehicleModel(v.model)),
                                v.plate,
                                ESX.Math.GroupDigits(v.price)..' DKK',
                                v.inUse,
                                '{{'.._U('dealer_menu_list_return')..'|return}}'
                            }
                        })
                    end

                    ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'brugtvogn_veh_list', elements2, function(data2, menu2)
                        if data2.value == 'return' then
                            menu2.close()
                            local model = 'NULL'
                            for k,v in pairs(showcaseVehicles) do
                                local vehProps = ESX.Game.GetVehicleProperties(v.veh)
                                if vehProps.plate == data2.data.plate then
                                    model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                                    break
                                end
                            end
                            TriggerServerEvent('id_brugtvogn:returnVehicleToOwner', data2.data.plate, model, serverEventCode)
                            exports['progressBars']:startUI(1500, _U('returning_veh'))
                            Citizen.Wait(1500)
                            openDealerMenu()
                        end
                    end, function(data2, menu2)
                        menu2.close()
                        showPromp = true
                    end)
                end)
            elseif data.current.value == 'sell_veh' then
                menu.close()
                if salesInformation.price then Core.Utils:ShowNotification(_U('missing_veh', salesInformation.plate)) showPromp = true return end
                Core.Utils:TriggerServerCallback('id_brugtvogn:isThereSpace', function(space) 
                    if space then
                        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'brugtvogn_sell_veh_plate', {
                            title = _U('dealer_menu_sell_plate')
                        }, function(data2, menu2)
                            if data2.value and string.len(data2.value) > 0 and string.len(data2.value) <= 8 then
                                Core.Utils:TriggerServerCallback('id_brugtvogn:isVehicleReal', function(isReal)
                                    if isReal then
                                        menu2.close()
                                        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'brugtvogn_sell_veh_price', {
                                            title = _U('dealer_menu_sell_price')
                                        }, function(data3, menu3)
                                            local num = tonumber(data3.value)
                                            if num then
                                                if (Config.Dealer.MaxPrice == -1 or num <= Config.Dealer.MaxPrice) and num >= Config.Dealer.MinPrice then
                                                    salesInformation.price = num
                                                    salesInformation.plate = data2.value:upper():gsub('-', ' ')
                                                    Core.Utils:ShowNotification(_U('sell_veh', salesInformation.plate, ESX.Math.GroupDigits(num)))
                                                    Core.Utils:ShowNotification(_U('cancel_sell'))
                                                    menu3.close()
                                                    showPromp = true
                                                else
                                                    exports['mythic_notify']:DoLongHudText('error', _U('not_correct_price'))
                                                end
                                            else
                                                exports['mythic_notify']:DoHudText('error', _U('not_number'))
                                            end
                                        end, function(data3, menu3)
                                            menu3.close()
                                            showPromp = true
                                        end)
                                    else
                                        exports['mythic_notify']:DoHudText('error', _U('veh_not_found'))
                                    end
                                end, data2.value:upper():gsub('-', ' '), true)
                            else
                                exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                            end
                        end, function(data2, menu2)
                            menu2.close()
                            showPromp = true
                        end)
                    else
                        Core.Utils:ShowNotification(_U('no_more_space'))
                    end
                end)
            end
        end, function(data, menu)
            menu.close()
            showPromp = true
        end)
    elseif _FRAMEWORK == 'QBCORE' then
        exports['qb-menu']:openMenu({
            {
                header = _U('dealer_menu_title'),
                icon = 'fas fa-car',
                isMenuHeader = true
            },
            {
                header = _U('dealer_menu_list-veh'),
                icon = 'fas fa-list',
                params = {
                    isAction = true,
                    event = function(data)
                        Core.Utils:TriggerServerCallback('id_brugtvogn:getVehiclesList', function(vehicles)
                            local menuTbl = {}

                            for k,v in pairs(vehicles) do
                                table.insert(menuTbl, {
                                    header = v.plate,
                                    txt = _U('dealer_menu_list_desc'),
                                    icon = 'fas fa-car-alt',
                                    params = {
                                        isAction = true,
                                        event = function(data)
                                            exports['qb-menu']:openMenu({
                                                {
                                                    header = _U('dealer_menu_list_owner'),
                                                    icon = 'fas fa-user',
                                                    txt = v.owner,
                                                    disabled = true
                                                },
                                                {
                                                    header = _U('dealer_menu_list_veh'),
                                                    icon = 'fas fa-car-side',
                                                    txt = GetLabelText(GetDisplayNameFromVehicleModel(v.model)),
                                                    disabled = true
                                                },
                                                {
                                                    header = _U('dealer_menu_list_plate'),
                                                    icon = 'fas fa-address-card',
                                                    txt = v.plate,
                                                    disabled = true
                                                },
                                                {
                                                    header = _U('dealer_menu_list_price'),
                                                    icon = 'fas fa-dollar-sign',
                                                    txt = Core.Utils.Math:GroupDigits(v.price)..' DKK',
                                                    disabled = true
                                                },
                                                {
                                                    header = _U('dealer_menu_list_inuse'),
                                                    icon = 'fas fa-running',
                                                    txt = v.inUse,
                                                    disabled = true
                                                },
                                                {
                                                    header = _U('dealer_menu_list_return'),
                                                    icon = 'fas fa-reply',
                                                    params = {
                                                        isAction = true,
                                                        event = function(data2)
                                                            local model = 'NULL'
                                                            for k,v in pairs(showcaseVehicles) do
                                                                local vehProps = QBCore.Functions.GetVehicleProperties(v.veh)
                                                                if vehProps.plate == v.plate then
                                                                    model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                                                                    break
                                                                end
                                                            end
                                                            TriggerServerEvent('id_brugtvogn:returnVehicleToOwner', v.plate, model, serverEventCode)
                                                            exports['progressBars']:startUI(1500, _U('returning_veh'))
                                                            Wait(1500)
                                                            openDealerMenu()
                                                        end
                                                    }
                                                },
                                                {
                                                    header = _U('dealer_menu_list_returnToHome'),
                                                    icon = 'fas fa-home',
                                                    params = {
                                                        isAction = true,
                                                        event = function()
                                                            openDealerMenu()
                                                        end
                                                    }
                                                }
                                            })
                                        end
                                    },
                                    args = v
                                })
                            end

                            table.insert(menuTbl, {
                                header = _U('dealer_menu_list_returnToHome'),
                                icon = 'fas fa-home',
                                params = {
                                    isAction = true,
                                    event = function()
                                        openDealerMenu()
                                    end
                                }
                            })

                            exports['qb-menu']:openMenu(menuTbl)
                        end)
                    end
                }
            },
            {
                header = _U('dealer_menu_sell-veh'),
                icon = 'fas fa-hand-holding-usd',
                params = {
                    isAction = true,
                    event = function(data)
                        if salesInformation.price then Core.Utils:ShowNotification(_U('missing_veh', salesInformation.plate)) return end
                        
                        local dialog = exports['qb-input']:ShowInput({
                            header = _U('dealer_menu_sell-veh'),
                            submitText = _U('dealer_menu_sell_submit'),
                            inputs = {
                                {
                                    text = _U('dealer_menu_sell_plate'),
                                    name = "plate",
                                    type = "text",
                                    isRequired = true,
                                },
                                {
                                    text = _U('dealer_menu_sell_price'),
                                    name = "price",
                                    type = "number",
                                    isRequired = true,
                                }
                            }
                        })
                
                        if dialog ~= nil then
                            if dialog.plate and string.len(dialog.plate) > 0 and string.len(dialog.plate) <= 8 then
                                Core.Utils:TriggerServerCallback('id_brugtvogn:isVehicleReal', function(isReal)
                                    if isReal then
                                        local num = tonumber(dialog.price)
                                        if num then
                                            if (Config.Dealer.MaxPrice == -1 or num <= Config.Dealer.MaxPrice) and num >= Config.Dealer.MinPrice then
                                                salesInformation.price = num
                                                salesInformation.plate = dialog.plate:upper():gsub('-', ' ')
                                                Core.Utils:ShowNotification(_U('sell_veh', salesInformation.plate, Core.Utils.Math:GroupDigits(num)))
                                                Core.Utils:ShowNotification(_U('cancel_sell'))
                                            else
                                                exports['mythic_notify']:DoLongHudText('error', _U('not_correct_price'))
                                            end
                                        else
                                            exports['mythic_notify']:DoHudText('error', _U('not_number'))
                                        end
                                    else
                                        exports['mythic_notify']:DoHudText('error', _U('veh_not_found'))
                                    end
                                end, dialog.plate:upper():gsub('-', ' '), true)
                            else
                                exports['mythic_notify']:DoHudText('error', _U('plate_min_char'))
                            end
                        end
                    end
                }
            }
        })
    end
end

CreateThread(function()
    while true do
        local sleep = 1000

        if salesInformation.price then
            sleep = 1
            if IsControlJustReleased(0, 58) then
                salesInformation = {price = nil, plate = nil}
                exports['mythic_notify']:DoHudText('inform', _U('canceled_sell'))
            end

            if not Config.EnableJob and IsControlJustReleased(0, 51) then
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                if vehicle > 0 then
                    local vehPlate = ''
                    if _FRAMEWORK == 'ESX' then
                        vehPlate = ESX.Game.GetVehicleProperties(vehicle).plate
                    elseif _FRAMEWORK == 'QBCORE' then
                        vehPlate = QBCore.Functions.GetPlate(vehicle)
                    end
                    if vehPlate:upper() == salesInformation.plate:upper() then
                        local vehProps = (_FRAMEWORK == 'ESX' and ESX.Game.GetVehicleProperties(vehicle) or _FRAMEWORK == 'QBCORE' and QBCore.Functions.GetVehicleProperties(vehicle))
                        local model = GetLabelText(GetDisplayNameFromVehicleModel(vehProps.model))
                        vehProps.dirtLevel = 0.0000000001
                        TriggerServerEvent('id_brugtvogn:setVehicleToSale', salesInformation, vehProps, model, serverEventCode)
                        salesInformation = {price = nil, plate = nil}
                        SetEntityAsMissionEntity(vehicle, true, true)
                        DeleteVehicle(vehicle)
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

function openShowroomMenu()
    if _FRAMEWORK == 'ESX' then
        ESX.UI.Menu.CloseAll()

        local elements = {}
        Core.Utils:TriggerServerCallback('id_brugtvogn:getVehiclesInStock', function(vehicles)
            for k,v in pairs(vehicles) do
                if not v.inUse then
                    table.insert(elements, {
                        label = GetLabelText(GetDisplayNameFromVehicleModel(v.vehProps.model))..' - '..v.vehProps.plate,
                        value = v
                    })
                end
            end

            if #elements <= 0 then exports['mythic_notify']:DoHudText('inform', _U('showroom_menu_novehs')) return end

            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'brugtvogn_showroom_menu', {
                title = _U('showroom_menu_title'),
                align = 'left',
                elements = elements
            }, function(data, menu)
                local value = data.current.value
                menu.close()
                TriggerServerEvent('id_brugtvogn:takeOutVehicle', value.plate)
                ESX.Game.SpawnVehicle(value.vehProps.model, vector3(Config.Showroom.Spawner.x, Config.Showroom.Spawner.y, Config.Showroom.Spawner.z), Config.Showroom.Spawner.w, function(vehicle) 
                    ESX.Game.SetVehicleProperties(vehicle, value.vehProps)
                    if GetResourceState('LegacyFuel') == 'started' then exports['LegacyFuel']:SetFuel(vehicle, 100) end
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end)
            end, function(data, menu)
                menu.close()
                showPromp = true
            end)
        end)
    elseif _FRAMEWORK == 'QBCORE' then
        Core.Utils:TriggerServerCallback('id_brugtvogn:getVehiclesInStock', function(vehicles)
            local menuTbl = {
                {
                    header = _U('showroom_menu_title'),
                    icon = 'fas fa-car',
                    isMenuHeader = true
                }
            }

            for k,v in pairs(vehicles) do
                if not v.inUse then
                    table.insert(menuTbl, {
                        header = GetLabelText(GetDisplayNameFromVehicleModel(v.vehProps.model)),
                        icon = 'fas fa-car-side',
                        txt = v.vehProps.plate,
                        params = {
                            isAction = true,
                            event = function(data)
                                TriggerServerEvent('id_brugtvogn:takeOutVehicle', v.vehProps.plate)
                                QBCore.Functions.SpawnVehicle(v.vehProps.model, function(vehicle)
                                    QBCore.Functions.SetVehicleProperties(vehicle, v.vehProps)
                                    if GetResourceState('LegacyFuel') == 'started' then exports['LegacyFuel']:SetFuel(vehicle, 100) end
                                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                                end, Config.Showroom.Spawner, true)
                            end
                        },
                        args = v
                    })
                end
            end

            if #menuTbl <= 1 then exports['mythic_notify']:DoHudText('inform', _U('showroom_menu_novehs')) return end

            exports['qb-menu']:openMenu(menuTbl)
        end)
    end
end