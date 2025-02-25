#summon early supply drop phase 1
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-load"}

#random location supply phase 1/2,3,4,5
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 700 false @e[type=armor_stand,tag=early-supply-drop,team=supply-state-load]

#set queue score for supply drop
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-6000] run scoreboard players set @s supply-queue 6000

#set ready to deploy
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-6000] at @s run tp @s ~ 300 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-6000] at @s run forceload add ~ ~

#load asset stage
scoreboard players add load-asset-stage preload-game 1