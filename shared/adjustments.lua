--[[    Adjusted Melee & Ranged Damage   ]]--
AD = {}

--[[    Change Water Intensity    ]]--
AD.adjust_water = { active = true, value = 0.6}

--[[    Weapon Damage Choices    ]]--
AD.adjust_damage = {
    melee = true, pistol = true, smg = true,
    rifle = true, shotgun = true, machine = true,
    sniper = true, heavy = true, throw = true,
    misc = true
}

--[[    Weapon Damage Values    ]]--
AD.adjust_meleedamage = {
    calvarydagger = 0.25, baseballbat = 0.15, brokenbottle = 0.25, unarmed = 0.25,
    flashlight = 0.25, golfclub = 0.25, crowbar = 0.25, hammer = 0.25,
    hatchet = 0.25, knuckles = 0.25, knife = 0.25, machete = 0.25,
    switchblade = 0.25, nightstick = 0.25, pipewrench = 0.25, battleaxe = 0.25,
    poolcue = 0.25, stonehatchet = 0.25, candycane = 0.25,
}

AD.adjust_pistoldamage = {
    pistol = 0.3, pistolmk2 = 0.3, combatpistol = 0.3, appistol = 0.3,
    stungun = 0.3, pistol50 = 0.3, snspistol = 0.3, snspistolmk2 = 0.3,
    heavypistol = 0.3, vintagepistol = 0.3, flaregun = 0.3, marksmanpistol = 0.3,
    revolver = 0.3, revolvermk2 = 0.3, doubleaction = 0.3, raypistol = 0.3,
    ceramicpistol = 0.3, navyrevolver = 0.3, gadgetpistol = 0.3, stungubmp = 0.3,
    pistolxm3 = 0.3,
}

AD.adjust_submachinegundamage = {
    micro = 0.15, smg = 0.15, smgmk2 = 0.15, assault = 0.15,
    combatpdw = 0.15, machine = 0.15, mini = 0.15, raycarbine = 0.15,
    tecpistol = 0.15
}

AD.adjust_shotgundamage = {
    pump = 0.3, pumpmk2 = 0.3, sawnoff = 0.3, assault = 0.3,
    bullpup = 0.3, musket = 0.3, heavy = 0.3, double = 0.3,
    auto = 0.3, combat = 0.3
}

AD.adjust_rifledamage = {
    
}

AD.adjust_sniperdamage = {
    
}

AD.adjust_machinegundamage = {
    
}

AD.adjust_heavydamage = {
    
}

AD.adjust_throwable = {
    
}

AD.adjust_misc = {
    
}