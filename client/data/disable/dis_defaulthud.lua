--[[    Disabling Basic Hud Aspects    ]]--
Citizen.CreateThread(function()
	Citizen.Wait(100)
    if UT.disable_defaulthud then
        HideHudComponentThisFrame(2)
        HideHudComponentThisFrame(3)
        HideHudComponentThisFrame(4)
        HideHudComponentThisFrame(6)
        HideHudComponentThisFrame(7)
        HideHudComponentThisFrame(8)
        HideHudComponentThisFrame(9)
    end
end)