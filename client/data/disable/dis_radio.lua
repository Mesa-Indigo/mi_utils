--[[    Disabling Vehicle Radios    ]]--
Citizen.CreateThread(function()
    Citizen.Wait(100)
    if UT.disable_radios then
        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        SetVehicleRadioEnabled(vehicle, false)
    end
end)