#summon epic supply drop phase 5
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-48000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-49200"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-50400"],Team:"supply-state-load"}

#random location supply phase 5
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 200 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-load,tag=supply-drop-time-48000]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 175 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-load,tag=supply-drop-time-49200]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 150 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-load,tag=supply-drop-time-50400]

#set queue score for supply drop
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-48000] run scoreboard players set @s supply-queue 48000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-49200] run scoreboard players set @s supply-queue 49200
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-50400] run scoreboard players set @s supply-queue 50400

#set ready to deploy
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=epic-supply-drop] at @s run tp @s ~ 300 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=epic-supply-drop] at @s run forceload add ~ ~

#load asset stage
scoreboard players add load-asset-stage preload-game 1