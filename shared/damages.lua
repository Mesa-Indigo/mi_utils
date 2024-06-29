--[[    Adjusted Melee & Ranged Damage   ]]--
AD = {}

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
    assault = 0.18, assaultmk2 = 0.18, carbine = 0.18, carbinemk2 = 0.18,
    advanced = 0.18, specialcarbine = 0.18, specialcarbinemk2 = 0.18, bullpup = 0.18,
    bullpupmk2 = 0.18, compact = 0.18, military = 0.18, heavy = 0.18,
    tactical = 0.18
}

AD.adjust_machinegundamage = {
    mg = 0.1, combatmg = 0.1, combatmgmk2 = 0.1, gunsenberg = 0.1
}

AD.adjust_sniperdamage = {
    sniper = 0.35, hvysniper = 0.4, hvysnipermk2 = 0.4, marksman = 0.3,
    marksmanmk2 = 0.3, precision = 0.35
}

AD.adjust_heavydamage = {
    rpg = 0.45, grenlaunch = 0.45, grenlaunchsmoke = 0.1, minigun = 0.04,
    firework = 0.15, railgun = 0.45, homing = 0.45, compact = 0.35,
    rayminigun = 0.08, emplaunch = 0.45, railgunxm3 = 0.45
}

AD.adjust_throwable = {
    grenade = 0.6, bzgas = 0.08, molotov = 0.5, stickybomb = 0.65,
    proxmine = 0.65, snowball = 0.05, pipebomb = 0.45, ball = 0.05,
    smokegas = 0.02, flare = 0.1, acidpack = 0.1
}

AD.adjust_misc = {
    gascan = 0.0, parachute = 0.0, fireext = 0.0, hazardcan = 0.0,
    fertilizercan = 0.0
}