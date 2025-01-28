#run if installed and game has started
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score lobby game-state matches 0 run tellraw @s {"text":"You can not edit customs when the game has started.","color":"red"}

#run if installed and game has not started
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score lobby game-state matches 1 run scoreboard players set old-combat customs 1
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score lobby game-state matches 1 run tellraw @s {"text":"[Old Combat] has been enabled","color":"green"}
execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] if score lobby game-state matches 1 as @a at @s run attribute @s minecraft:attack_speed base set 100

#run if not installed
execute as @s at @s unless entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s [{"text":"You must install the game first by using ","color":"red"},{"text":"/function install:_","color":"gray","italic": true}]