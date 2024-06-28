--[[    Adjust Damage: Shotgun    ]]--
local adj = AD.adjust_submachinegundamage

Citizen.CreateThread(function()
	while AD.adjust_damage.smg do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x13532244, adj.micro)
		SetWeaponDamageModifier(0x2BE6766B, adj.smg)
		SetWeaponDamageModifier(0x78A97CD0, adj.smgmk2)
		SetWeaponDamageModifier(0xEFE7E2DF, adj.assault)
		SetWeaponDamageModifier(0x0A3D4D34, adj.combatpdw)
		SetWeaponDamageModifier(0xDB1AA450, adj.machine)
		SetWeaponDamageModifier(0xBD248B55, adj.mini)
		SetWeaponDamageModifier(0x476BF155, adj.raycarbine)
		SetWeaponDamageModifier(0x14E5AFD5, adj.tecpistol)
	end
end)