worldborder set 20 30
scoreboard players set border bossbar 600
bossbar set minecraft:border max 600
bossbar set minecraft:border value 600
bossbar set minecraft:border color red
tellraw @a {"text":"Border Shrinking...","color":"red"}
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~

#bossbar name display (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 0
scoreboard players set tick border-countdown 0
scoreboard players set second border-countdown 30
scoreboard players set minute border-countdown 0