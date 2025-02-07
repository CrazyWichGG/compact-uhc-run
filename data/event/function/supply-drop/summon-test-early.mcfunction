#summon early supply drop
execute as @s at @s run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Tags:["supply-drop","early-supply-drop","supply-drop-test"],Team:"supply-state-prepare"}

execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-prepare,tag=supply-drop-test] at @s run tp @s ~ ~30 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-prepare,tag=supply-drop-test] at @s run team join supply-state-ready