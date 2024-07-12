--[[    Func: Remove All Pickups    ]]--
function RemoveWeaponDrops()
	RemoveAllPickupsOfType(14)
end

--[[    Adjust Player Skills   ]]--
AddEventHandler('onResourceStart', function()
	if Shared.adjust_skills then
		StatSetInt('MP0_SHOOTING_ABILITY', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_STAMINA', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_STRENGTH', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_LUNG_CAPACITY', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_WHEELIE_ABILITY', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_FLYING_ABILITY', Shared.skills.value, Shared.skills.active)
		StatSetInt('MP0_STEALTH_ABILITY', Shared.skills.value, Shared.skills.active)
	end
end)

--[[    Disabling Dispatch    ]]--
Citizen.CreateThread(function()
	while Shared.disable_dispatch do
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
        if Shared.disable_defaulthud then
            HideHudComponentThisFrame(2)
            HideHudComponentThisFrame(3)
            HideHudComponentThisFrame(4)
            HideHudComponentThisFrame(6)
            HideHudComponentThisFrame(7)
            HideHudComponentThisFrame(8)
            HideHudComponentThisFrame(9)
        end
        --[[    Disabling Native Aiming Reticle    ]]--
        if Shared.disable_aimreticle then
            HideHudComponentThisFrame(14)
        end
        --[[    Disabling Vehicle Radios    ]]--
        if Shared.disable_radios then
            local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
            SetVehicleRadioEnabled(vehicle, false)
        end
        --[[    Disable Weapon Drops    ]]--
        if Shared.disable_weapondrop then
            RemoveWeaponDrops();
        end
        --[[    Adjust Water Intensity    ]]--
        if Shared.adjust_water.active then
            WaterOverrideSetStrength(Shared.adjust_water.value)
        end
        --[[    Disabling Idle Camera   ]]--
        if Shared.disable_idlecam then
            DisableIdleCamera(true)
        end
    end
end)