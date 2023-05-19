execute at @a[tag=gliding] run effect give @a[tag=gliding] minecraft:slow_falling 1 5 true
execute as @a[tag=gliding] at @s run particle minecraft:cloud ~ ~-1 ~ 0 0 0 0.2 5 force @s
execute as @a[tag=gliding] at @s unless block ~ ~-1 ~ minecraft:spruce_trapdoor unless block ~ ~-1 ~ minecraft:slime_block unless block ~ ~-1 ~ air run tag @s remove gliding