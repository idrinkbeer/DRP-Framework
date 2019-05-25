-- CREATED BY TOSIC ON THE FIVEM FORUMS FOLLOWING AN ESX GUIDELINE, BUT REWRITTEN IN DRP FRAMEWORK AND ECONOMY
resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page 'assets/index.html'

client_script 'client/main.lua'
client_script 'client/managers.lua'
client_script 'client/useitemfunctions.lua'
client_script 'config.lua'

server_scripts {
    'server/main.lua',
    'config.lua',
    'server/managers.lua'
}

files {
    'assets/index.html',
    'assets/css/main.css',
    'assets/css/items.css',
    'assets/js/main.js',
    'assets/img/arrow.svg',
    'assets/img/inventorySVG.svg'
}

export "CreateLocalPickupObject"
server_export "CheckForItemOwnershipByName"
server_export "AddItem"