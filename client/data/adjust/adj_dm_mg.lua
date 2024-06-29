--[[    Adjust Damage: MG    ]]--
local adj = AD.adjust_machinegundamage

Citizen.CreateThread(function()
	while AD.adjust_damage.machine do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x9D07F764, adj.mg)
		SetWeaponDamageModifier(0x7FD62962, adj.combatmg)
		SetWeaponDamageModifier(0xDBBD7280, adj.combatmgmk2)
		SetWeaponDamageModifier(0x61012683, adj.gunsenberg)
	end
end)