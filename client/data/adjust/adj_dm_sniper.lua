--[[    Adjust Damage: Sniper    ]]--
local adj = AD.adjust_sniperdamage

Citizen.CreateThread(function()
	while AD.adjust_damage.sniper do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x05FC3C11, adj.sniper)
		SetWeaponDamageModifier(0x0C472FE2, adj.hvysniper)
		SetWeaponDamageModifier(0xA914799, adj.hvysnipermk2)
		SetWeaponDamageModifier(0xC734385A, adj.marksman)
        SetWeaponDamageModifier(0x6A6C02E0, adj.marksmanmk2)
		SetWeaponDamageModifier(0x6E7DDDEC, adj.precision)
	end
end)