--[[    Disabling Idle Camera   ]]--
AddEventHandler('onResourceStart', function()
	if UT.disable_idlecam then
		DisableIdleCamera(true)
	end
end)