#gliding
execute at @a[tag=gliding] run effect give @a[tag=gliding] minecraft:slow_falling 1 5 true
execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:cloud ^ ^1 ^-1 0 0 0 0.2 5 force @s

#remove gliding 
execute as @a[tag=gliding,nbt={OnGround:true}] at @s unless block ~ ~-1 ~ minecraft:slime_block unless block ~ ~-1 ~ air run effect clear @s minecraft:slow_falling
execute as @a[tag=gliding,nbt={OnGround:true}] at @s unless block ~ ~-1 ~ minecraft:slime_block unless block ~ ~-1 ~ air run tag @s remove gliding