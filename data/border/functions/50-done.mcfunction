worldborder set 50
scoreboard players set border bossbar 1200
bossbar set minecraft:border max 1200
bossbar set minecraft:border value 1200
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"20x20","color":"red"},{"text":" in 1 minute.","color":"yellow"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 4
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 1