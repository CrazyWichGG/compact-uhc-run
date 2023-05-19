team add ingame
team modify ingame color red
team join ingame @a
function border:default
scoreboard players set game-time time 0
scoreboard players set @a kills 0
scoreboard objectives setdisplay list kills
bossbar set minecraft:main players @a
bossbar set minecraft:main visible false
bossbar set minecraft:border players @a
bossbar set minecraft:border visible true
execute as @a at @s run attribute @s generic.max_health base set 40
effect give @a regeneration 30 255 true
gamemode survival @a[team=ingame]
spreadplayers ~ ~ 100 500 false @a[team=ingame]
give @a[team=ingame] stone_axe
give @a[team=ingame] stone_pickaxe
give @a[team=ingame] bow
give @a[team=ingame] arrow 64
title @a reset