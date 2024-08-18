lib.locale()

-- check player onload
AddEventHandler('ox:playerLoaded', function(source)
    local player = Ox.GetPlayer(source)
    if not player or not player.charId then return end

    if Debug then
        -- basic character information
        lib.print.info(locale('loading_user')..player.charId)
        lib.print.info(locale('loading_char')..player.stateId)
    end

    TriggerClientEvent('miut:c:cutscene:into', 4)

end)
