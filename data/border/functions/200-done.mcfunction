worldborder set 200
scoreboard players set border bossbar 2400
bossbar set minecraft:border max 2400
bossbar set minecraft:border value 2400
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"50x50","color":"red"},{"text":" in 2 minutes.","color":"yellow"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 3
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 2