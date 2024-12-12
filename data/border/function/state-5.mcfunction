worldborder set 4 2147483647
#title @a subtitle [{"text":"BORDER IS NOW MOVING!","color":"red"}]
#title @a title [{"text":"/!\\","color":"red"}]
tellraw @a {"text":"\nBorder is moving! Don't stay still.","color":"red"}

#summon center armor stand
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ 100 ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"border-center"}'}

#summon target armor stand
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run summon armor_stand ~ 100 ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"border-target"}'}
execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run spreadplayers ~ ~ 0 100 false @e[type=minecraft:armor_stand,name="border-target",limit=1]

#border state (sync with system:border-bossbar-name.mcfunction and system:border-move.mcfunction)
scoreboard players set border-state border-countdown 5