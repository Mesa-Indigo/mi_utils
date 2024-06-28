--[[    Adjust Water Intensity    ]]--
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if AD.adjust_water.active then
            WaterOverrideSetStrength(AD.adjust_water.value)
        end
	end
end)