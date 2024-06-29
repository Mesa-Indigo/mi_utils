--[[    Adjust Damage: Heavy Weapons    ]]--
local adj = AD.adjust_heavydamage

Citizen.CreateThread(function()
	while AD.adjust_damage.heavy do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0xB1CA77B1, adj.rpg)
		SetWeaponDamageModifier(0xA284510B, adj.grenlaunch)
		SetWeaponDamageModifier(0x4DD2DC56, adj.grenlaunchsmoke)
		SetWeaponDamageModifier(0x42BF8A85, adj.minigun)
        SetWeaponDamageModifier(0x7F7497E5, adj.firework)
		SetWeaponDamageModifier(0x6D544C99, adj.railgun)
		SetWeaponDamageModifier(0x63AB0442, adj.homing)
		SetWeaponDamageModifier(0x0781FE4A, adj.compact)
        SetWeaponDamageModifier(0xB62D1F67, adj.rayminigun)
		SetWeaponDamageModifier(0xDB26713A, adj.emplaunch)
		SetWeaponDamageModifier(0xFEA23564, adj.railgunxm3)
	end
end)