-- fxmanifest.lua for dream-framework

fx_version 'cerulean'
game 'gta5'

author 'Don Bewok (raszain) & Gemini Assistant'
description 'dream-framework: The universal FiveM framework for cross-compatibility.'
version '0.1.0'

-- Shared scripts can be accessed by both client and server
shared_scripts {
    -- '@ox_lib/init.lua', -- Contoh jika kita butuh library, untuk sekarang kosong
}

-- Scripts that run on the server
server_scripts {
    '[core]/core_server.lua',
    '[adapters]/esx_adapter.lua',
    '[adapters]/qb_adapter.lua'
}

-- Scripts that run on the client (player's machine)
client_scripts {
    '[core]/core_client.lua'
}

-- Ensures this resource starts after es_extended and qb-core if they exist
-- Ini penting agar adapter kita bisa berfungsi dengan benar
ensure {
    "es_extended",
    "qb-core"
}
