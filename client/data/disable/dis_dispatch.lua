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