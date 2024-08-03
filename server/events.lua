lib.locale()

-- check player onload
AddEventHandler('ox:playerLoaded', function(source)
    local player = Ox.GetPlayer(source)
    if not player or not player.charId then return end

    if Debug then
        -- basic character information
        print(locale('loading_user')..player.charId)
        print(locale('loading_char')..player.stateId)
    end

    
end)

