worldborder set 500
scoreboard players set border bossbar 3600
bossbar set minecraft:border max 3600
bossbar set minecraft:border value 3600
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"200x200","color":"red"},{"text":" in 3 minutes.","color":"yellow"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 2
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 3