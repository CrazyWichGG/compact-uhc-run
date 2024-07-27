worldborder set 1500
scoreboard players set border bossbar 12000
bossbar set minecraft:ingame max 12000
bossbar set minecraft:ingame value 12000
bossbar set minecraft:ingame color green
bossbar set minecraft:ingame style notched_10
tellraw @a [{"text":"PvP will be enable in ","color":"yellow"},{"text":"10 minutes","color":"red"},{"text":".","color":"yellow"}]
team modify ingame friendlyFire false

#border state (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 1
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 10