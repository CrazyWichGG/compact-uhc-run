worldborder set 1 30
scoreboard players set border bossbar 600
bossbar set minecraft:border max 600
bossbar set minecraft:border value 600
bossbar set minecraft:border color red
effect give @a[team=ingame] glowing 3600 0 true
title @a subtitle {"text":"Border shrinking...","color":"white"}
title @a title {"text":"Death Match","color":"red"}
execute as @a at @s run playsound entity.ender_dragon.growl master @s

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown -1
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 30
scoreboard players set minute border-countdown 0