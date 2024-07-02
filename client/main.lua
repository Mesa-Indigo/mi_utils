--[[    Func: Remove All Pickups    ]]--
function RemoveWeaponDrops()
	RemoveAllPickupsOfType(14)
end

--[[    Adjust Player Skills   ]]--
AddEventHandler('onResourceStart', function()
	if UT.adjust_skills then
		StatSetInt('MP0_SHOOTING_ABILITY', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_STAMINA', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_STRENGTH', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_LUNG_CAPACITY', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_WHEELIE_ABILITY', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_FLYING_ABILITY', UT.skills.value, UT.skills.active)
		StatSetInt('MP0_STEALTH_ABILITY', UT.skills.value, UT.skills.active)
	end
end)

--[[    Disabling Dispatch    ]]--
Citizen.CreateThread(function()
	while UT.disable_dispatch do
		Citizen.Wait(350)
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		ClearAreaOfCops(0.0, 0.0, 0.0, 10000.0, true)
	end
end)

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
        --[[    Disabling Basic Hud Aspects    ]]--
        if UT.disable_defaulthud then
            HideHudComponentThisFrame(2)
            HideHudComponentThisFrame(3)
            HideHudComponentThisFrame(4)
            HideHudComponentThisFrame(6)
            HideHudComponentThisFrame(7)
            HideHudComponentThisFrame(8)
            HideHudComponentThisFrame(9)
        end
        --[[    Disabling Native Aiming Reticle    ]]--
        if UT.disable_aimreticle then
            HideHudComponentThisFrame(14)
        end
        --[[    Disabling Vehicle Radios    ]]--
        if UT.disable_radios then
            local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
            SetVehicleRadioEnabled(vehicle, false)
        end
        --[[    Disable Weapon Drops    ]]--
        if UT.disable_weapondrop then
            RemoveWeaponDrops();
        end
        --[[    Adjust Water Intensity    ]]--
        if UT.adjust_water.active then
            WaterOverrideSetStrength(UT.adjust_water.value)
        end
        --[[    Disabling Idle Camera   ]]--
        if UT.disable_idlecam then
            DisableIdleCamera(true)
        end
    end
end)