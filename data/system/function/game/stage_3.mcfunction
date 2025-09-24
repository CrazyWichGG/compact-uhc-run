worldborder set 200 1800
scoreboard players set border bossbar 42000
bossbar set minecraft:ingame max 42000
bossbar set minecraft:ingame value 42000
bossbar set minecraft:ingame color red
bossbar set minecraft:ingame style notched_10
title @a subtitle [{"text":"Border is shrinking...","color":"red"}]
title @a title [{"text":""}]
tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"35 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

#border state (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 3
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 35