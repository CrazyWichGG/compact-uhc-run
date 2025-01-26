#gliding
execute at @a[tag=gliding] run effect give @a[tag=gliding] minecraft:slow_falling 1 5 true
execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:cloud ^ ^1 ^-1 0 0 0 0.2 5 force @a
#execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:cherry_leaves ^ ^1 ^-1 0.5 0.5 0.5 0.2 5 normal @a
#execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:totem_of_undying ^ ^1 ^-1 0 0 0 0.2 5 force @a

#remove gliding 
execute as @a[tag=gliding,nbt={OnGround:true}] at @s run effect clear @s minecraft:slow_falling
execute as @a[tag=gliding,nbt={OnGround:true}] at @s run effect clear @s minecraft:levitation
execute as @a[tag=gliding,nbt={OnGround:true}] at @s run tag @s remove gliding

execute as @a[tag=gliding] at @s if block ~ ~ ~ water run effect clear @s minecraft:slow_falling
execute as @a[tag=gliding] at @s if block ~ ~ ~ water run effect clear @s minecraft:levitation
execute as @a[tag=gliding] at @s if block ~ ~ ~ water run tag @s remove gliding