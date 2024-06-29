----    cfx.re information  ----
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

----    Resource Information   ----
name 'mi_template_job'
author 'MIAgimir'
version '1.0.1'
repository 'https://github.com/MIAgimir/mi_utils'
description 'ox script template'

----    Dependancies   ----
dependencies { '/server:7290', 'oxmysql', 'ox_lib', 'ox_target' }

----    Manifest Information    ----
shared_scripts { '@ox_lib/init.lua', 'shared/*.lua'}

client_scripts { 'client/*.lua', 'client/data/adjust/*.lua', 'client/data/disable/*.lua' }

server_scripts { '@oxmysql/lib/MySQL.lua', 'server/*.lua',  }