resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependencies {
	"externalsql"
}

--------------------------------------
------------ SERVER ------------------
--------------------------------------
server_script 'Server/server.lua'
--server_script 'Server/settings.lua' --
--------------------------------------
--------------------------------------

--------------------------------------
------------ CLIENT ------------------
--------------------------------------
client_script 'Client/menu.lua'   ----
client_script 'Client/client.lua' ----
--------------------------------------
--------------------------------------