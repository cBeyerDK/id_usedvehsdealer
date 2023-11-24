Utils = Utils or {}

function Utils:HasPlayerGotJob()
    if _FRAMEWORK == 'ESX' then
        if ESX.PlayerData.job then
            return ESX.PlayerData.job.name == Config.Job.Name
        end

        return false
    elseif _FRAMEWORK == 'QBCORE' then
        local plyData = QBCore.Functions.GetPlayerData()

        if not plyData or not plyData.job then return false end

        return plyData.job.name == Config.Job.Name
    else
        --[[
            Skal return om spilleren har brugtvogns jobbet
        ]]
        return true
    end
end