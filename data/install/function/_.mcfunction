tag @s add install_request
tag @s remove install_random_request
tag @s remove uninstall_request
tellraw @s [{"text":"\n----------------- "},{"text":"Install Process","color":"green","bold":true},{"text":" -----------------"}]
tellraw @s [{"text":"\nStand on map center and then do ","color":"yellow","bold":false},{"text":"/function install:confirm","color":"gray","italic":true,"bold":false},{"text":" to start setup process.","color":"yellow","bold":false}]
tellraw @s [{"text":"\n\nWarning!\n","color":"red","bold":true},{"text":"Make sure you uninstall the old setup using","color":"yellow","bold":false},{"text":"\n/function uninstall:_","color":"gray","italic":true,"bold":false}]
tellraw @s {"text":"---------------------------------------------------"}