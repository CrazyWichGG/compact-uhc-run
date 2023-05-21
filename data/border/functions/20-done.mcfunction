worldborder set 20
scoreboard players set border bossbar 1200
bossbar set minecraft:border max 1200
bossbar set minecraft:border value 1200
bossbar set minecraft:border color green
tellraw @a [{"text":"Death Match","color":"red"},{"text":" will begin in 1 minute.","color":"yellow"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 5
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 0
scoreboard players set minute border-countdown 1