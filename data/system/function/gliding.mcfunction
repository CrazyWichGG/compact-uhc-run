#gliding score
execute as @a[tag=!gliding] run scoreboard players set @s gliding 0
execute as @a[tag=gliding] at @s run scoreboard players add @s gliding 1

#gliding
execute as @a[tag=gliding] at @s run effect give @s minecraft:slow_falling 1 5 true
execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:cloud ^ ^1 ^-1 0 0 0 0.2 5 force @a
#execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:cherry_leaves ^ ^1 ^-1 0.5 0.5 0.5 0.2 5 normal @a
#execute as @a[tag=gliding] at @s rotated ~ 0 run particle minecraft:totem_of_undying ^ ^1 ^-1 0 0 0 0.2 5 force @a

#remove gliding 
execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_on_ground run effect clear @s minecraft:slow_falling
execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_on_ground run effect clear @s minecraft:levitation
execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_on_ground run tag @s remove gliding

execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_swimming run effect clear @s minecraft:slow_falling
execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_swimming run effect clear @s minecraft:levitation
execute as @a[tag=gliding] at @s if score @s gliding matches 20.. if predicate system:is_swimming run tag @s remove gliding