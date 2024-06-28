--[[    Func: Remove All Pickups    ]]--
function RemoveWeaponDrops()
	RemoveAllPickupsOfType(14)
end

--[[    Disable Weapon Drops    ]]--
Citizen.CreateThread(function()
    while UT.disable_weapondrop do
        Citizen.Wait(100)
        RemoveWeaponDrops();
    end
end)