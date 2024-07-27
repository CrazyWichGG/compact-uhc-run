tag @s add setup-uninstall-request
tag @s remove setup-request
tag @s remove setup-random-request
tellraw @s [{"text":"\n--------------- "},{"text":"Uninstall Process","color":"red","bold":true},{"text":" -----------------"}]
tellraw @s [{"text":"\nDo ","color":"yellow","bold":false},{"text":"/function uninstall:confirm","color":"gray","italic":true,"bold":false},{"text":" to start uninstall process.","color":"yellow","bold":false}]
tellraw @s {"text":"\n---------------------------------------------------"}