worldborder set 1
scoreboard players set border bossbar 0
bossbar set minecraft:border max 1
bossbar set minecraft:border value 0
bossbar set minecraft:border color red
execute as @e[type=armor_stand,name="map-center"] at @s run worldborder center ~1000 ~
worldborder damage amount 0.001

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown -1
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 0