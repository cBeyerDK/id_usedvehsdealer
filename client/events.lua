RegisterNetEvent('id_brugtvogn:updateVehicles', function() vehiclesSpawned = false end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if #showcaseVehicles > 0 then
            for k,v in pairs(showcaseVehicles) do
                SetEntityAsMissionEntity(v.veh, true, true)
                DeleteVehicle(v.veh)
            end
        end
    end
end)