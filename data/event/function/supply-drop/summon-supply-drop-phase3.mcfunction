#summon mid supply drop phase 3
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-load"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-load"}

#random location supply phase 3
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 550 false @e[type=armor_stand,tag=mid-supply-drop,team=supply-state-load,tag=supply-drop-time-24000]

#set queue score for supply drop
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-24000] run scoreboard players set @s supply-queue 24000

#set ready to deploy
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-24000] at @s run tp @s ~ 300 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-load,tag=supply-drop-time-24000] at @s run forceload add ~ ~

#load asset stage
scoreboard players add load-asset-stage preload-game 1
