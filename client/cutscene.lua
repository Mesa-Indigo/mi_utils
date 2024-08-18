
-- credit to https://github.com/Doublox for figuring out the custscene

-- variables
-- Definition of the peds list.
local pedsList = {
    [0] = "MP_Plane_Passenger_1",
    [1] = "MP_Plane_Passenger_2",
    [2] = "MP_Plane_Passenger_3",
    [3] = "MP_Plane_Passenger_4",
    [4] = "MP_Plane_Passenger_5",
    [5] = "MP_Plane_Passenger_6",
    [6] = "MP_Plane_Passenger_7"
}

local comp = {
    face = {    [0] = 21,   [1] = 13,   [2] = 15,   [3] = 44,   [4] = 44,   [5] = 27,   [6] = 16 },
    mask = {    [0] = 0,    [1] = 0,    [2] = 0,    [3] = 0,    [4] = 0,    [5] = 0,    [6] = 0 },
    hair = {    [0] = 1,    [1] = 1,    [2] = 1,    [3] = 21,   [4] = 21,   [5] = 1,    [6] = 1 },
    torso1 = {  [0] = 2,    [1] = 2,    [2] = 2,    [3] = 2,    [4] = 2,    [5] = 2,    [6] = 2 },
    pants = {   [0] = 9,    [1] = 10,   [2] = 0,    [3] = 1,    [4] = 2,    [5] = 4,    [6] = 5 },
    bags = {    [0] = 0,    [1] = 0,    [2] = 0,    [3] = 0,    [4] = 0,    [5] = 0,    [6] = 0 },
    shoes = {   [0] = 4,    [1] = 10,   [2] = 1,    [3] = 11,   [4] = 4,    [5] = 13,   [6] = 2 },
    accs = {    [0] = 0,    [1] = 11,   [2] = 0,    [3] = 0,    [4] = 4,    [5] = 5,    [6] = 0 },
    shirt = {   [0] = 2,    [1] = 2,    [2] = 2,    [3] = 2,    [4] = 2,    [5] = 2,    [6] = 2 },
    armor = {   [0] = 0,    [1] = 0,    [2] = 0,    [3] = 0,    [4] = 0,    [5] = 0,    [6] = 0 },
    decal = {   [0] = 0,    [1] = 0,    [2] = 0,    [3] = 0,    [4] = 0,    [5] = 0,    [6] = 0 },
    torso2 = {  [0] = 10,   [1] = 10,   [2] = 6,    [3] = 3,    [4] = 4,    [5] = 2,    [6] = 3 }
}

-- Definition of the different components types.
local ComponentsTypes = { 
    [0] = comp.face,
    [1] = comp.mask,
    [2] = comp.hair,
    [3] = comp.torso1,
    [4] = comp.pants,
    [5] = comp.bags,
    [6] = comp.shoes,
    [7] = comp.accs,
    [8] = comp.shirt,
    [9] = comp.armor,
    [10] = comp.decal,
    [11] = comp.torso2
}

-- Clear the peds props, all 8 of them.
local cloearpedprops = function(ped)
    for i = 0, 8, 1 do
        ClearPedProp(ped, i)
    end
end

-- Handle our randomly generated peds clothes.
local randompeds = function(ped)
    SetPedRandomComponentVariation(ped, 0)
    cloearpedprops(ped)
end

-- Handle our configured peds clothes.
local random = true
local randompedclothes = function(ped, pedIdx)
    if random then
        if pedIdx >= 0 and pedIdx <= 6 then randompeds(ped) end
    else
        for i = 0, 6, 1 do -- Loop through all peds.
            if pedIdx >= 0 and pedIdx <= 6 then -- Checkt he player idx.
                for j = 0, 11, 1 do -- Loop through all of the 11 components.
                    local component = ComponentsTypes[j] -- Get omponent config.
                    local numberOfTextures = GetNumberOfPedTextureVariations(ped, j, component[i])
                    local randomTexture = math.random(numberOfTextures)

                    SetPedComponentVariation(ped, j, component[i], randomTexture, 0)
                    cloearpedprops(ped)
                end
            end
        end
    end
end

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
    local model = checkmodel(cache.ped) print(model)
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

    -- customize other peds
    local peds = {}
	for pedIdx = 0, 6, 1 do
		if pedIdx == 1 or pedIdx == 2 or pedIdx == 4 or pedIdx == 6 then
			peds[pedIdx] = CreatePed(26, "mp_f_freemode_01", -1117.77783203125, -1557.6248779296875, 3.3819, 0.0, false, false)
		else
			peds[pedIdx] = CreatePed(26, "mp_m_freemode_01", -1117.77783203125, -1557.6248779296875, 3.3819, 0.0, false, false)
		end

        if not IsEntityDead(peds[pedIdx]) then
            randompedclothes(peds[pedIdx], pedIdx)
            FinalizeHeadBlend(peds[pedIdx])
            RegisterEntityForCutscene(peds[pedIdx], pedsList[pedIdx], 0, 0, 64)
        end
    end

    -- set scene
    NewLoadSceneStartSphere(-1212.79, -1673.52, 7, 1000, 0)
    SetWeatherTypeNow('EXTRASUNNY')
    StartCutscene(4)

    -- wait time for scene to play
    Wait(Data.Cutscene.time)
    DoScreenFadeOut(500)

    -- stops player from zooming on spawn
    FreezeEntityPosition(cache.ped, true)
    Wait(750)
    StopCutsceneImmediately()

    -- stop cutscene music
    music(Data.Cutscene.music.stop)

    -- fade in and set player
    SetEntityCoords(cache.ped, -1039.932, -2741.504, 20.169, false, false, false, false)
    SetEntityHeading(cache.ped, 329.539)
    FreezeEntityPosition(cache.ped, false)

    -- bring player in
    Wait(1500)
    DoScreenFadeIn(1000)

end)