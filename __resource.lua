resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'OuDayas'

version '1.0'

dependency { "OuDayasLIB" }

client_scripts {
	-- config
	"config.lua",
	-- client
	"client/main.lua",
}

server_scripts {
	"config.lua",
	"server/main.lua"
}
