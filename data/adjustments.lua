-- disables weapon drops on ped death
Shared.disable_weapondrop = true

-- disable ped police / ems response
Shared.disable_dispatch = true

-- disables vehicle radios
Shared.disable_radios = true

-- disables idle camera
Shared.disable_idlecam = true

-- disables native hud
Shared.disable_defaulthud = true

-- disables native aiming reticle
Shared.disable_aimreticle = true

-- adjust water intensity (0.0 - normal, 1.0 - smooth, 3.0 intense)
Shared.adjust_water = { active = true, value = 0.7}

-- set player skills
Shared.adjust_skills = true

-- adjust values for player skills
Shared.skills = {
    -- controls player accuracy
    shooting = { active = true, value = 50 },
    -- sets value for player stamina
    stamina = { active = true, value = 50 },
    -- sets damage player does unarmed
    strength = { active = true, value = 50 },
    -- sets value for oxygen level
    breathing = { active = true, value = 50 },
    -- this was from another update, idk
    wheelie = { active = true, value = 50 },
    -- sets control for aircraft
    flying = { active = true, value = 50 },
    -- sets how sneaky beaky they are
    stealth = { active = true, value = 50 },
}