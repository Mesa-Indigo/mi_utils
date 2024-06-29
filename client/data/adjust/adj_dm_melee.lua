--[[    Adjust Damage: Melee    ]]--
local adj = AD.adjust_meleedamage

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if AD.adjust_meleedamage then
			SetWeaponDamageModifier(0x92A27487, adj.calvarydagger)
			SetWeaponDamageModifier(0x958A4A8F, adj.baseballbat)
			SetWeaponDamageModifier(0xF9E6AA4B, adj.brokenbottle)
			SetWeaponDamageModifier(0xA2719263, adj.unarmed)
			SetWeaponDamageModifier(0x8BB05FD7, adj.flashlight)
			SetWeaponDamageModifier(0x440E4788, adj.golfclub)
			SetWeaponDamageModifier(0x84BD7BFD, adj.crowbar)
			SetWeaponDamageModifier(0x4E875F73, adj.hammer)
			SetWeaponDamageModifier(0xF9DCBF2D, adj.hatchet)
			SetWeaponDamageModifier(0xD8DF3C3C, adj.knuckles)
			SetWeaponDamageModifier(0x99B507EA, adj.knife)
			SetWeaponDamageModifier(0xDD5DF8D9, adj.machete)
			SetWeaponDamageModifier(0xDFE37640, adj.switchblade)
			SetWeaponDamageModifier(0x678B81B1, adj.nightstick)
			SetWeaponDamageModifier(0x19044EE0, adj.pipewrench)
			SetWeaponDamageModifier(0xCD274149, adj.battleaxe)
			SetWeaponDamageModifier(0x94117305, adj.poolcue)
			SetWeaponDamageModifier(0x3813FC08, adj.stonehatchet)
			SetWeaponDamageModifier(0x6589186A, adj.candycane)
		end

	end
end)