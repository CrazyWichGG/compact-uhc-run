worldborder set 1500
scoreboard players set border bossbar 12000
bossbar set minecraft:ingame max 12000
bossbar set minecraft:ingame value 12000
bossbar set minecraft:ingame color green
bossbar set minecraft:ingame style notched_10
title @a subtitle [{"text":"PvP has enabled!","color":"red"}]
title @a title [{"text":""}]
tellraw @a [{"text":"Border will shrink in ","color":"yellow"},{"text":"10 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
team modify ingame friendlyFire true

#border state (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 2
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 10