#team management
team add ingame
team modify ingame color red
team join ingame @a

#border
function border:default

#scoreboard
scoreboard players set game-time time 0
scoreboard players set @a kills 0
scoreboard objectives setdisplay list kills

#bossbar
bossbar set minecraft:main players @a
bossbar set minecraft:main visible false
bossbar set minecraft:border players @a
bossbar set minecraft:border visible true

#others
execute as @a at @s run attribute @s generic.max_health base set 40
effect give @a regeneration 30 255 true
gamemode survival @a[team=ingame]
spreadplayers ~ ~ 100 500 false @a[team=ingame]

#give item
clear @a[team=ingame]
give @a[team=ingame] stone_axe
give @a[team=ingame] stone_pickaxe
item replace entity @a[team=ingame] hotbar.8 with nether_star{display:{Name:'[{"text":"Shop Menu ","italic":false,"color":"yellow"},{"text":"(Right Click)","color":"gray"}]',Lore:['[{"text":"Collect ","italic":false,"color":"white"},{"text":"emeralds","color":"green"},{"text":" by killing mobs","color":"white"}]','[{"text":"or mining ores and using ","italic":false,"color":"white"},{"text":"Shop Menu ","color":"yellow"},{"text":"","color":"dark_purple"}]','[{"text":"to buy items!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"DO NOT THROW AWAY!","italic":false,"color":"red","bold":true}]']}} 1

#title
title @a reset
title @a[team=ingame] title {"text":"UHC Run","color":"green","bold": true}
title @a[team=ingame] subtitle {"text":"Good luck and have fun!","color":"white"}

#gliding
execute as @a[team=ingame] at @s run tp @s ~ ~100 ~
tag @a[team=ingame] add gliding