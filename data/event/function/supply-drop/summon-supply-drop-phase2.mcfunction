#summon early supply drop phase 2
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-load"}

#random location supply phase 2
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 700 false @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-12000]

#set queue score for supply drop
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-12000] run scoreboard players set @s supply-queue 12000

#set ready to deploy
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-12000] at @s run tp @s ~ 300 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-12000] at @s run forceload add ~ ~

#load asset stage
scoreboard players add load-asset-stage preload-game 1
