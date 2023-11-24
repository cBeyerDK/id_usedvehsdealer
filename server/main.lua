serverEventCode = '3a3Hc5hvBHU$fqsS$m8XW=v4m#--6P2kCGpnPvrPKAnZkmC6CGSsXJmPZEmbTS37GQKLmz6Fm_V^LT3&#BdDvzdbj_vg*9VBUJ-G=afVLkKybB^-nWKe*H?!J!$4D--PW?tS^&529@uFsM_Z+aQ%=tr6aBav4pHz2vmKF&Y#JQ$PPM4sc7ku?QL=hg^T?_WkU?2-%#6Dh?5Y2__?SAgMX#3ktnR!8JaMXV76f2U-Ukz8@_k!u-X3xzBD!T6jD36_&&Agu@+gA$gsTL84!SVVdyEpQtWfKYkR_f&%@uUSPqnc2n5cuDB%MYhzzayVxbb*hxM&H8!!m_Q!wNVqS9Q9am*qg*&!B3Q=QmQQ5Chnw72A3+B@HeMEqA4+33a?Y4KXQ$-rk=Mtecgm^z9&C$uMw+*vmVD3P-jM7-2q$^nMBMcb+ab_Mvn?_m#X-6jnsfxn9%yDtC$T_TyR_t**2U4Dct+hxH#z_T5mR6a3_M*3$#S8Yvg*!Ph8g64w4pzFDk65P5Cu#HmTzLrKYw^97+4ykv4ZrKZ6%r^k677KU@*g^q7-M@HVTZbcv$+NdyRF5C7HR3pztY%-77ukQ$p?FEg%aQT*zbfR!qR5$9WEEGmFLmTb8^MdgPX7npf=kvTCTn=YMm4HNGNE3Vx2Dvz+gb_uhjxvwJs@@Ew8V2sb^BFc*+EVd8A5+5Kx7jJ5RNqQJmSCWvT^PkeF55rEqsus?*dyC=XMRQ&FdWmk_zK*FQHbmY7ex_SGT@7Qyv4$uXA+@BvRHt5tGNt6cmy&tYB^!Z526*=ZP=+m532PbcQZ79h5h^fVjEgjPHJHME?8J6$NpjbdqU!xf%2BS3e9tdBr29-kQy@U_km5%N6LAzwZ&Lt%j^bd75zS62Vg6MBbE^3k&bCUD?p%tS!nhG+5XpDAtbDBEF-^x49#NGau_&!J7qdKFjzS4^HbZ4APYr$+MgN?8NCVmEcb5FBj3cbj=aBRjkGaY=qz6Bb#vHSPbLXBk6knn?8w$J-a?Bc-X8zz$+LCkaJUWyxG+?DBL*8n2_aN6Z%XJ&TNNt!5rRwBW!gyux=$UNZTdH@GCqKy2zT^*zjQtrHPZ?EYheHPs5FkU+AbnBWMRg9sE=bXwFXwNd&=_Ncb$csZhd!vewUg%kUUfEBCRd#jVzkm9UhvLn@&^w=_M9SXnx-Z*XXkHkp!GLPg^4rDQqWv-3SZeu*3!dpmrk-SJ+4dh!HveEyw_9ZNsrpuF*5#aQfuaYp2aDxr?*&Q&^+WgUH@%pmY6&s_Yj%RGg!L^4^ewJxmp$ph-*p=Y6s8RrW6CsMy^zEeMnp$rU2Y-mCFGEpB&*L*9_4_=N&zma@GF?bqN$-X*KdyFfnsu!*_3^2^Nbe3&rswzedm5%kBdfKpjAgsxr$C^pDp4S?yt6+N-Z!*#^39bpktAx$_Zu!Xd5&wW=WumPw3VQ!WBLC_=526AfPeJunZUgzxbLEnf9B5g$rRAqbhCj_35Es!_5A%^XTNt8qp6sMZkkvX74=J-?4h#L*6JDU!wM*dJdNDWr$xR*+qP%wvw2tnVMEmhW^VcAWL$FZupfn!WjY2J5Kxhr^y#Zh$e$9b-bu8GEHjAR%LK*r^rh9CUxHf#MT83Pg6g@RjRbArMbdgAS3F!BQ3Jze4V%G=M9E+Kebf*s!VwHvAV^Tt*Fgr_&&s+8daTauE_cF*qzkc*ddkMn^UBmB@tb!PsjkNDV?-xgP7FwR#jYTYB2uCa!qk*%wg#GXcMV=jCr5hB$GzBH-xp?kh22S%V-?5N94t5Nq^JKkw+@Bktnx6=RgVd+svZ^K8uyj7BJvf*!EXKeHG29?Xjp+8rV5V9-fgXCF5$KfRSbefc9a2x5gCA2r@VCmSSHzkdbw&wJt4h!%X-s9MW9HHCExdh-?DGYjVzU-H$QS-RY9ptE6eRMzKa5xz*3x^V^%9bm@r3RMJ$nqA=D2352CH2YxP7T$J%2s8y-UG*5Ku&NLhX#WHHP!%7FzxnY4*=@9BBGM_S5h_F%Gwf$%rK#k**9mNu6KNzRBvSAa=rEbY@FBAB=9gj3uc9!-v'

--====================
--==    Variables   ==
--====================
vehiclesInStock = {}

--================
--==    Logs    ==
--================
for k,v in pairs(Config.Logs) do
    if k ~= 'Colors' then
        local prefix = GetCurrentResourceName()..'::'..tostring(k):lower()

        if type(v) == 'table' then
            for k2,v2 in pairs(v) do
                Core.Logs:CreateLog(prefix..':'..tostring(k2):lower(), {
                    title = _('logs:'..tostring(k):lower()..'::'..tostring(k2):lower()..':title'),
                    webhook = v2,
                    color = Config.Logs.Colors[k]
                })
            end
        elseif type(v) == 'string' then
            Core.Logs:CreateLog(prefix, {
                title = _('logs::'..tostring(k):lower()..':title'),
                webhook = v,
                color = Config.Logs.Colors[k]
            })
        end
    end
end

if _FRAMEWORK == 'ESX' and Config.Society.Enable then
    TriggerEvent('esx_phone:registerNumber', Config.Society.Name, Config.Society.Label, false, false)
    TriggerEvent('esx_society:registerSociety', Config.Society.Name, Config.Society.Label, Config.Society.Account, Config.Society.Datastore, Config.Society.Inventory, {type = Config.Society.Type})
end

Core:Ready(function()
    exports.oxmysql:query('SELECT * FROM id_usedcarsdealer', {}, function(result)
        if result and result[1] then
            for key,value in pairs(result) do
                table.insert(vehiclesInStock, {
                    plate = value.plate,
                    vehProps = json.decode(value.vehProps),
                    price = value.price,
                    owner = value.seller,
                    inUse = false,
                })
            end
        end
    end)   
end)

Core.Utils:RegisterServerCallback('id_brugtvogn:getVehiclesInStock', function(src, cb)
    cb(vehiclesInStock)
end)

function getVehicleInStock(plate)
    for k,v in pairs(vehiclesInStock) do
        if v.plate == plate then
            return v
        end
    end

    return nil
end

Core.Utils:RegisterServerCallback('id_brugtvogn:getVehiclesList', function(src, cb)
    local data = {}
    for k,v in pairs(vehiclesInStock) do
        local name = Utils:GetRPNameFromIdentifier(v.owner)
        if name then
            if v.inUse then
                table.insert(data, {
                    owner = name.firstname..' '..name.lastname,
                    model = v.vehProps.model,
                    plate = v.plate,
                    price = v.price,
                    inUse = _U('yes')
                })
            else
                table.insert(data, {
                    owner = name.firstname..' '..name.lastname,
                    model = v.vehProps.model,
                    plate = v.plate,
                    price = v.price,
                    inUse = _U('no')
                })
            end
        else
            if v.inUse then
                table.insert(data, {
                    owner = 'NULL',
                    model = v.vehProps.model,
                    plate = v.plate,
                    price = v.price,
                    inUse = _U('yes')
                })
            else
                table.insert(data, {
                    owner = 'NULL',
                    model = v.vehProps.model,
                    plate = v.plate,
                    price = v.price,
                    inUse = _U('no')
                })
            end
        end
    end

    cb(data)
end)

Core.Utils:RegisterServerCallback('id_brugtvogn:isVehicleReal', function(src, cb, plate, noDealer)
    if noDealer then
        local ply
        if _FRAMEWORK == 'ESX' then
            ply = ESX.GetPlayerFromId(src).identifier
        elseif _FRAMEWORK == 'QBCORE' then
            ply = QBCore.Functions.GetPlayer(src).PlayerData.license
        end

        if Utils:GetVehicleFromDB(plate) ~= nil then
            if ply == Utils:GetVehicleFromDB(plate).owner then
                cb(true)
            else
                cb('notOwner')
            end
        end

        cb(false)
    else
        cb(Utils:GetVehicleFromDB(plate) ~= nil)
    end
end)

Core.Utils:RegisterServerCallback('id_brugtvogn:isThereSpace', function(src, cb)
    cb(#vehiclesInStock < #Config.Dealer.Loc)
end)

RegisterCommand('getbvmoney', function(src)
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

    if money > 0 then
        Utils:AddPlayerMoney(src, money)
        exports.oxmysql:query('DELETE FROM id_usedcarsdealer_accounts WHERE identifier = ?', {ply})
        TriggerClientEvent('id_notify:notify', src, {
            type = 'success',
            message = _U('got_account_money', Core.Utils.Math:GroupDigits(money))
        })
    end
end, false)