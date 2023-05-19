execute store result bossbar minecraft:border value run scoreboard players get border bossbar
scoreboard players remove border bossbar 1
execute as @a at @s run spawnpoint @s ~ ~ ~
execute as @a at @a if score @s death matches 1 run function system:player-dead
scoreboard players add game-time time 1
setworldspawn ~ ~2 ~