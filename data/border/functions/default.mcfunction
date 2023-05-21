worldborder set 1000
scoreboard players set border bossbar 6000
bossbar set minecraft:border max 6000
bossbar set minecraft:border value 6000
bossbar set minecraft:border color green
bossbar set minecraft:border style notched_10
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"500x500","color":"red"},{"text":" in 5 minutes.","color":"yellow"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 1
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 5