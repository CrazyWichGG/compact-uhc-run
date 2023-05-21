#run if installed
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score player-left player >= can-start player run function system:game-start
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score player-left player < can-start player run tellraw @s {"text":"Must be at least 2 players to start the game.","color":"red"}

#run if not installed
execute as @s at @s unless entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s [{"text":"You must install the game first by using ","color":"red"},{"text":"/function install:_","color":"gray","italic": true}]