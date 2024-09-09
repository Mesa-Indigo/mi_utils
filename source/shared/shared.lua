---@diagnostic disable: undefined-global

-- shared data variables
Shared, Data = {}, {}

-- ox variables
Target, Inventory = exports.ox_target, exports.ox_inventory
Lib, Sql = exports.ox_lib, exports.oxmysql

-- debug option
Debug = true

-- locale option | 'en', 'es', 'fr'
Locale = 'en'

-- load locale
lib.locale()
