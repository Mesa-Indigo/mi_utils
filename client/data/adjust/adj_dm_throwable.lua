--[[    Adjust Damage: Throwables    ]]--
local adj = AD.adjust_throwable

Citizen.CreateThread(function()
	while AD.adjust_damage.throw do
		Citizen.Wait(0)
		SetWeaponDamageModifier(0x93E220BD, adj.grenade)
		SetWeaponDamageModifier(0xA0973D5E, adj.bzgas)
		SetWeaponDamageModifier(0x24B17070, adj.molotov)
		SetWeaponDamageModifier(0x2C3731D9, adj.stickybomb)
        SetWeaponDamageModifier(0xAB564B93, adj.proxmine)
		SetWeaponDamageModifier(0x787F0BB, adj.snowball)
		SetWeaponDamageModifier(0xBA45E8B8, adj.pipebomb)
		SetWeaponDamageModifier(0x23C9F95C, adj.ball)
        SetWeaponDamageModifier(0xFDBC8A50, adj.smokegas)
		SetWeaponDamageModifier(0x497FACC3, adj.flare)
		SetWeaponDamageModifier(0xF7F1E25E, adj.acidpack)
	end
end)