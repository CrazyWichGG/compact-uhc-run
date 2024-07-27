#add gliding
execute as @a[team=ingame] at @s if block ~ ~-1 ~ minecraft:slime_block run tag @s add gliding
execute as @a[tag=gliding] at @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 45 true
execute as @a[tag=gliding] at @s if block ~ ~-1 ~ minecraft:slime_block run setblock ~ ~-1 ~ air destroy