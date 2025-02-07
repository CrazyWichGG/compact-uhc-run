#summon early supply drop phase 1
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-6000"],Team:"supply-state-prepare"}
#summon early supply drop phase 2
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-time-12000"],Team:"supply-state-prepare"}
#summon mid supply drop phase 3
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-24000"],Team:"supply-state-prepare"}
#summon mid supply drop phase 4
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-36000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-36000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","mid-supply-drop","supply-drop-time-36000"],Team:"supply-state-prepare"}
#summon epic supply drop phase 5
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-48000"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-49200"],Team:"supply-state-prepare"}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","epic-supply-drop","supply-drop-time-50400"],Team:"supply-state-prepare"}

#random location supply phase 1/2,3,4,5
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 700 false @e[type=armor_stand,tag=early-supply-drop,team=supply-state-prepare]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 550 false @e[type=armor_stand,tag=mid-supply-drop,team=supply-state-prepare,tag=supply-drop-time-24000]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 400 false @e[type=armor_stand,tag=mid-supply-drop,team=supply-state-prepare,tag=supply-drop-time-36000]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 200 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-prepare,tag=supply-drop-time-48000]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 175 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-prepare,tag=supply-drop-time-49200]
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 300 150 false @e[type=armor_stand,tag=epic-supply-drop,team=supply-state-prepare,tag=supply-drop-time-50400]

#set queue score for supply drop
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-6000] run scoreboard players set @s supply-queue 6000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-12000] run scoreboard players set @s supply-queue 12000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-24000] run scoreboard players set @s supply-queue 24000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-36000] run scoreboard players set @s supply-queue 36000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-48000] run scoreboard players set @s supply-queue 48000
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-49200] run scoreboard players set @s supply-queue 49200
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare,tag=supply-drop-time-50400] run scoreboard players set @s supply-queue 50400

#set ready to deploy
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare] at @s run tp @s ~ 300 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare] at @s run forceload add ~ ~