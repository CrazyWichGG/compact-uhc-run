worldborder set 5 120
scoreboard players set border bossbar 2147483647
bossbar set minecraft:ingame max 1
bossbar set minecraft:ingame value 2147483647
bossbar set minecraft:ingame color red
bossbar set minecraft:ingame style notched_10
title @a subtitle [{"text":"Your position has been revealed!","color":"white"}]
title @a title [{"text":"Deathmatch!","color":"red","bold": true}]
tellraw @a {"text":"\nBorder is shrinking! Your position has been revealed to all players.","color":"red"}
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
effect give @a[team=ingame] glowing infinite 0 true

#border state (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 5