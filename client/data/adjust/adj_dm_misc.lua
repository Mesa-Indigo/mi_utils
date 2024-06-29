--[[    Adjust Damage: Throwables    ]]--
local adj = AD.adjust_throwable

Citizen.CreateThread(function()
	while AD.adjust_damage.throw do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x34A67B97, adj.gascan)
		SetWeaponDamageModifier(0xFBAB5776, adj.parachute)
		SetWeaponDamageModifier(0x060EC506, adj.fireext)
		SetWeaponDamageModifier(0xBA536372, adj.hazardcan)
        SetWeaponDamageModifier(0x184140A1, adj.fertilizercan)
	end
end)