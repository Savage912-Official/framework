fx_version 'adamant'
game 'gta5'

dependencies {
	'jobs',
}

shared_script {
	'sh_config.lua',
	'sh_job.lua',
}

client_scripts {
	'cl_paramedic.lua',
}

server_scripts {
	'sv_paramedic.lua',
}