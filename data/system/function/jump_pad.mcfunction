#add gliding
execute as @a[team=ingame] at @s if predicate system:is_step_on_slime_block run tag @s add gliding
execute as @a[tag=gliding] at @s if predicate system:is_step_on_slime_block run effect give @s minecraft:levitation 1 60 true
execute as @a[tag=gliding] at @s if predicate system:is_step_on_slime_block run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace slime_block