tellraw @a [{"text":"Randomizing new center location...","color":"green"}]
worldborder set 59999968
execute as @s at @s run kill @e[type=minecraft:armor_stand,name="map-center"]
execute as @s at @s run spreadplayers ~ ~ 0 10000 false @s
execute as @s at @s run tp @a @s
execute as @s at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"map-center"}'}
execute as @s at @e[type=minecraft:armor_stand,name="map-center",limit=1] run worldborder center ~ ~
worldborder set 50
tellraw @a [{"text":"New center location has been randomized!","color":"green"}]