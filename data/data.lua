
-- cutscene details on load
Data.Cutscene = {

    -- time for cutscene to play before ending
    -- default is 32500, removes lamar showing
    time = 20500,

    -- music played in cutscene
    music = { start = 'FM_INTRO_START', stop = 'AC_STOP' },

}

-- spawn locations on load
Data.spawn = {

    metro = {
        station_lsia = {
            label = 'Metro: L.S. Int. Airport', icon = 'cable-car',
            loc = vec4(-1044.027, -2748.758, 9.753, 330.986), color = '#4DABF7'
        },

        station_vespucci = {
            label = 'Metro: Vespucci', icon = 'cable-car',
            loc = vec4(-544.293, -1294.800, 25.901, 249.662), color = '#4DABF7'
        },

        station_strawberry = {
            label = 'Metro: Strawberry', icon = 'cable-car',
            loc = vec4(247.399, -1204.284, 37.924, 267.881), color = '#4DABF7'
        },

        station_vinewood = {
            label = 'Metro: Vinewood', icon = 'cable-car',
            loc = vec4(-248.962, -311.763, 20.633, 186.042), color = '#4DABF7'
        },

        station_richman = {
            label = 'Metro: Rockford Hills', icon = 'cable-car',
            loc = vec4(-830.903, -115.346, 26.956, 118.805), color = '#4DABF7'
        },

        station_delperro = {
            label = 'Metro: Del Perro', icon = 'cable-car',
            loc = vec4(-1355.392, -518.210, 22.463, 122.868), color = '#4DABF7'
        },

        station_lseoul = {
            label = 'Metro: Little Seoul', icon = 'cable-car',
            loc = vec4(-490.094, -719.196, 22.853, 358.268), color = '#4DABF7'
        },

        station_downtown = {
            label = 'Metro: Downtown', icon = 'cable-car',
            loc = vec4(-218.962, -1043.721, 29.140, 76.522), color = '#4DABF7'
        },

        station_southls = {
            label = 'Metro: South L.S.', icon = 'cable-car',
            loc = vec4(122.776, -1734.136, 29.110, 143.717), color = '#4DABF7'
        },
    },

    taxi = {
        station_sandyshores = {
            label = 'Taxi: Sandy Shores', icon = 'van-shuttle',
            loc = vec4(1993.578, 3773.626, 32.180, 209.126), color = '#FFD43B'
        },

        station_harmony = {
            label = 'Taxi: Harmony', icon = 'van-shuttle',
            loc = vec4(599.107, 2742.160, 41.069, 177.658), color = '#FFD43B'
        },

        station_paletobay = {
            label = 'Taxi: Paleto Bay', icon = 'van-shuttle',
            loc = vec4(-234.855, 6195.892, 30.489, 213.924), color = '#FFD43B'
        },

        station_grapeseed = {
            label = 'Taxi: Grapeseed', icon = 'van-shuttle',
            loc = vec4(1690.384, 4784.913, 40.921, 89.628), color = '#FFD43B'
        },

        station_chiliad = {
            label = 'Taxi: Mt. Chiliad', icon = 'van-shuttle',
            loc = vec4(-1492.669, 4976.656, 62.638, 77.615), color = '#FFD43B'
        },
    },

    airline = {
        station_lsia = {
            label = 'L.S. Airlines: LSIA', icon = 'plane-arrival',
            loc = vec4(-1037.810, -2738.093, 19.169, 328.397), color = '#E7F5FF'
        },

        station_grapeseed = {
            label = 'L.S. Airlines: Grapeseed', icon = 'plane-arrival',
            loc = vec4(2122.111, 4790.622, 40.116, 23.408), color = '#E7F5FF'
        },

        station_cayoperico = {
            label = 'L.S. Airlines: Cayo Perico', icon = 'plane-arrival',
            loc = vec4(4504.182, -4514.166, 3.096, 15.752), color = '#E7F5FF'
        },
    }
}