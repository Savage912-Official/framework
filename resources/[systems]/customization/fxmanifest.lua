fx_version 'cerulean'
game 'gta5'

dependencies {
	'entities',
}

shared_scripts {
	'shared/models.lua',
	'shared/map.lua',
}

client_scripts {
	'@camera/cl_camera.lua',
	'@ui/scripts/cl_main.lua',
	'@utils/client/blips.lua',
	'@utils/client/vectors.lua',

	'config/*.lua',
	'client/main.lua',
	'client/controller.lua',
	'client/editor.lua',
	'client/outfits.lua',
	'client/shops.lua',
	'client/toggles.lua',
}

server_scripts {
	'@utils/server/database.lua',
	'server/main.lua',
	'server/outfits.lua',
	'server/shops.lua',
}