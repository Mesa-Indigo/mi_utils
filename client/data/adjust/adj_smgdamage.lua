--[[    Adjust Damage: Shotgun    ]]--
local adj = AD.adjust_shotgundamage

Citizen.CreateThread(function()
	while AD.adjust_damage.shotgun do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x1D073A89, adj.pump)
		SetWeaponDamageModifier(0x555AF99A, adj.pumpmk2)
		SetWeaponDamageModifier(0x7846A318, adj.sawnoff)
		SetWeaponDamageModifier(0xE284C527, adj.assault)
		SetWeaponDamageModifier(0x9D61E50F, adj.bullpup)
		SetWeaponDamageModifier(0xA89CB99E, adj.musket)
		SetWeaponDamageModifier(0x3AABBBAA, adj.heavy)
		SetWeaponDamageModifier(0xEF951FBB, adj.double)
		SetWeaponDamageModifier(0x12E82D3D, adj.auto)
		SetWeaponDamageModifier(0x5A96BA4, adj.combat)
	end
end)