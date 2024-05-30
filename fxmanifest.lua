fx_version "cerulean"
author "dylann"
version "0.0.1"

game "gta5"

lua54 "yes"

server_scripts {
	"server/**.lua"
}

client_scripts {
	"client/**.lua"
}

shared_scripts {
	'config.lua',
	'@ox_lib/init.lua',
}

