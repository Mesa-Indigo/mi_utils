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


end)


-- get group for player
RegisterNetEvent('miut:s:checkgroups')
AddEventHandler('miut:s:checkgroups', function(source, id)
    local player = Ox.GetPlayer()
    if not player or not player.charId then return end
    local group, rank = player.getGroup('airforce')
    print('Group', group, rank)
end)