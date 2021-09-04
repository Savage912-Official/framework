fx_version 'adamant'
game 'gta5'

shared_script {
	'@grids/shared/grids.lua',
	'config/*.lua',
	'sh_main.lua',
	'modules/sh_*.lua',
}

client_scripts {
	'@utils/client/entities.lua',
	'@utils/client/misc.lua',
	'@utils/client/vehicles.lua',
	'cl_main.lua',
	'modules/cl_*.lua',
}

server_scripts {
	'@utils/server/random.lua',
	'sv_main.lua',
	'sv_vehicle.lua',
	'sv_commands.lua',
	'modules/sv_*.lua',
}