--[[    Disabling Native Aiming Reticle    ]]--
Citizen.CreateThread(function()
	Citizen.Wait(100)
    if UT.disable_aimreticle then
        HideHudComponentThisFrame(14)
    end
end)