tag @s add uninstall_request
tag @s remove install_request
tag @s remove install_random_request
tellraw @s [{"text":"\n--------------- "},{"text":"Uninstall Process","color":"red","bold":true},{"text":" -----------------"}]
tellraw @s [{"text":"\nDo ","color":"yellow","bold":false},{"text":"/function uninstall:confirm","color":"gray","italic":true,"bold":false},{"text":" to start uninstall process.","color":"yellow","bold":false}]
tellraw @s {"text":"\n---------------------------------------------------"}