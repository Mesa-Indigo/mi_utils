
-- load info
local loadin = function(data)

    local spawns = {}
    -- load spawns into list
    for x, iv in pairs(data) do
        spawns[#spawns+1] = {
            title = iv.label,
            description = iv.description,
            icon = iv.icon, iconColor = iv.color,
            onSelect = function()
                Cnt.Teleport(cache.ped, iv.loc.x, iv.loc.y, iv.loc.z, iv.loc.w)
            end,
        }
    end
     -- show list options in menu
     lib.registerContext({
        id = 'list',
        title = 'Spawn Locations',
        menu = 'main',
        options = spawns
    })
    -- load context menu
    lib.showContext('list')
end

RegisterCommand('list', function()
    lib.registerContext({
        id = 'main',
        title = 'Spawn Locations',
        options = {
            {
                title = 'Los Santos Metro',
                description = 'Ride the tram to get to your destination',
                icon = 'cable-car', iconColor = '#4DABF7',
                onSelect = function()
                    loadin(Data.spawn.metro)
                end,
            },
            {
                title = 'Downtown Cab Co.',
                description = 'Call a taxi to get to your destination',
                icon = 'van-shuttle', iconColor = '#FFD43B',
                onSelect = function()
                    loadin(Data.spawn.taxi)
                end,
            },
            {
                title = 'L.S. Airlines',
                description = 'Catch a flight to get to your destination',
                icon = 'plane-arrival', iconColor = '#E7F5FF',
                onSelect = function()
                    loadin(Data.spawn.airline)
                end,
            }
        }
    })
    -- load context menu
    lib.showContext('main')
end, false)