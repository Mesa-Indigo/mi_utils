exports('repair_veheng', function()
    local player = cache.ped
    local vehicle = lib.getClosestVehicle(GetEntityCoords(player), 3.5, false)

    if vehicle then
        SetVehicleDoorOpen(vehicle, 4, false, false)
        Citizen.Wait(500)
        if lib.progressBar({
            duration = 5000,
            label = 'Repairing Engine',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                blendIn = 3.0,
                dict = 'mini@repair',
                clip = 'fixing_a_player',
                blendOut = 3.0,
            },
            prop = {
                model = `prop_tool_adjspanner`,
                pos = vec3(0.07, 0.055, 0.01),
                rot = vec3(280.0, 10.0, 310.0)
            },
        }) then
            print('Do stuff when complete')
            SetVehicleDoorShut(vehicle, 4, false)
            Citizen.Wait(500)
            SetVehicleFixed(vehicle)
        else
            print('Do stuff when cancelled')
            Citizen.Wait(1000)
            SetVehicleDoorShut(vehicle, 4, false)
        end
    end
end)