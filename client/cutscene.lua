
-- variables
local placement = vec3(-1117.777, -1557.624, 3.381)

-- generate player ped
local generateplayer = function(string1, string2, player)
	RegisterEntityForCutscene(0, string1, 3, GetEntityModel(player), 0)
	RegisterEntityForCutscene(player, string1, 0, 0, 0)
	SetCutsceneEntityStreamingFlags(string1, 0, 1)
	local ped = RegisterEntityForCutscene(0, string2, 3, 0, 64)
---@diagnostic disable-next-line: param-type-mismatch
	NetworkSetEntityInvisibleToNetwork(ped, true)
end

-- check player model
local checkmodel = function(player)
    if IsPedModel(player, 'mp_m_freemode_01') then
        local result = 'male' return result
    elseif IsPedModel(player, 'mp_f_freemode_01') then
        local result = 'female' return result
    else
        local result = 'error' return result
    end
end

local music = function(sound)
    PrepareMusicEvent(sound)
	TriggerMusicEvent(sound)
end

-- initialize cutscene when spawning in
RegisterNetEvent('miut:c:cutscene:into')
AddEventHandler('miut:c:cutscene:into', function()

    -- prepare / play cutscene music
    music(Data.Cutscene.music.start)

    -- check player model
    local model = checkmodel(cache.ped)
    if model == 'male' then
        RequestCutsceneWithPlaybackList("MP_INTRO_CONCAT", 31, 8)
    elseif model == 'female' then
        RequestCutsceneWithPlaybackList("MP_INTRO_CONCAT", 103, 8)
    end

    -- wait for cutscene to load
    while not HasCutsceneLoaded() do Wait(100) end

    -- load cutscene for player model
    if model == 'male' then
        generateplayer("MP_Male_Character", "MP_Female_Character", cache.ped)
    elseif model == 'female' then
        generateplayer("MP_Female_Character", "MP_Male_Character", cache.ped)
    end

end)