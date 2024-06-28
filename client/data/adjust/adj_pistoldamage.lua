--[[    Adjust Damage: Pistol    ]]--
local adj = AD.adjust_pistoldamage

Citizen.CreateThread(function()
	while AD.adjust_damage.pistol do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x1B06D571, adj.pistol)
		SetWeaponDamageModifier(0xBFE256D4, adj.pistolmk2)
		SetWeaponDamageModifier(0x5EF9FEC4, adj.combatpistol)
		SetWeaponDamageModifier(0x22D8FE39, adj.appistol)
		SetWeaponDamageModifier(0x3656C8C1, adj.stungun)
		SetWeaponDamageModifier(0x99AEEB3B, adj.pistol50)
		SetWeaponDamageModifier(0xBFD21232, adj.snspistol)
		SetWeaponDamageModifier(0x88374054, adj.snspistolmk2)
		SetWeaponDamageModifier(0xD205520E, adj.heavypistol)
		SetWeaponDamageModifier(0x83839C4, adj.vintagepistol)
		SetWeaponDamageModifier(0x47757124, adj.flaregun)
		SetWeaponDamageModifier(0xDC4DB296, adj.marksmanpistol)
		SetWeaponDamageModifier(0xC1B3C3D1, adj.revolver)
		SetWeaponDamageModifier(0xCB96392F, adj.revolvermk2)
		SetWeaponDamageModifier(0x97EA20B8, adj.doubleaction)
		SetWeaponDamageModifier(0xAF3696A1, adj.raypistol)
		SetWeaponDamageModifier(0x94117305, adj.ceramicpistol)
		SetWeaponDamageModifier(0x917F6C8C, adj.navyrevolver)
		SetWeaponDamageModifier(0x6589186A, adj.gadgetpistol)
		SetWeaponDamageModifier(0x45CD9CF3, adj.stungubmp)
		SetWeaponDamageModifier(0x1BC4FDB9, adj.pistolxm3)
	end
end)