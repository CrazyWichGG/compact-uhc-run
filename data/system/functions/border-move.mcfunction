execute as @e[type=armor_stand,name="border-center",limit=1] at @s if entity @e[type=armor_stand,name="border-target",limit=1,distance=..0.1] at @e[type=armor_stand,name='map-center',limit=1] run spreadplayers ~ ~ 0 50 false @e[type=armor_stand,name="border-target",limit=1]
execute as @e[type=armor_stand,name="border-center",limit=1] at @s run worldborder center ~ ~
execute as @e[type=armor_stand,name="border-center",limit=1] at @s facing entity @e[type=armor_stand,name="border-target",limit=1] feet run tp @s ^ ^ ^0.025

execute as @e[type=armor_stand,name="border-center",limit=1] at @s run tp @s ~ 100 ~
execute as @e[type=armor_stand,name="border-target",limit=1] at @s run tp @s ~ 100 ~