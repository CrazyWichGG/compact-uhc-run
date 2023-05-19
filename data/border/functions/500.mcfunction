worldborder set 500 180
scoreboard players set border bossbar 3600
bossbar set minecraft:border max 3600
bossbar set minecraft:border name "Border Shrinking"
bossbar set minecraft:border value 3600
bossbar set minecraft:border color red
tellraw @a {"text":"Border Shrinking...","color":"red"}
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~