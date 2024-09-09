
-- game / build information
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean' lua54 'yes' game 'gta5'

-- resource information
repository 'https://github.com/Mesa-Indigo/mi_core'
description 'ox_core based script'
author 'Agimir' name 'MI_CORE' version '0.0.1'
license 'LGPL-3.0-or-later'

-- resource dependencies
dependencies {
    'oxmysql',
    'ox_lib',
    'ox_core',
}

-- shared files
shared_scripts {
    '@ox_lib/init.lua',
    '@ox_core/lib/init.lua',
    'source/shared/*.lua',
    'data/*.lua', 'config.lua'
}

-- client files
client_scripts {
    '@ox_core/imports/client.lua',
    'source/client/**/*.lua'
}

-- server files
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'source/server/**/*.lua'
}

-- resource files
files {
    'locales/*.json'
}