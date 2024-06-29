--[[    Adjust Damage: Shotgun    ]]--
local adj = AD.adjust_rifledamage

Citizen.CreateThread(function()
	while AD.adjust_damage.shotriflegun do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0xBFEFFF6D, adj.assault)
		SetWeaponDamageModifier(0x394F415C, adj.assaultmk2)
		SetWeaponDamageModifier(0x83BF0278, adj.carbine)
		SetWeaponDamageModifier(0xFAD1F1C9, adj.carbinemk2)
		SetWeaponDamageModifier(0xAF113F99, adj.advanced)
		SetWeaponDamageModifier(0xC0A3098D, adj.specialcarbine)
		SetWeaponDamageModifier(0x969C3D67, adj.specialcarbinemk2)
		SetWeaponDamageModifier(0x7F229F94, adj.bullpup)
		SetWeaponDamageModifier(0x84D6FAFD, adj.bullpupmk2)
		SetWeaponDamageModifier(0x624FE830, adj.compact)
		SetWeaponDamageModifier(0x9D1F17E6, adj.military)
		SetWeaponDamageModifier(0xC78D71B4, adj.heavy)
		SetWeaponDamageModifier(0xD1D5F52B, adj.tactical)
	end
end)