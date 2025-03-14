#default smoke
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 0 rotated ~ 0 run particle minecraft:cloud ^ ^1 ^-1 0.2 0.2 0.2 0 5 normal @a
#cherry leaves
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 1 rotated ~ 0 run particle minecraft:cherry_leaves ^ ^1 ^-1 0.5 0.5 0.5 0 5 normal @a
#totem
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 2 rotated ~ 0 run particle minecraft:totem_of_undying ^ ^1 ^-1 0 0 0 0.2 5 normal @a
#heart
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 3 rotated ~ 0 run particle minecraft:heart ^ ^1 ^-1 0.2 0.2 0.2 0 3 normal @a
#soul
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 4 rotated ~ 0 run particle minecraft:soul ^ ^1 ^-1 0.3 0.3 0.3 .05 5 normal @a
#flame
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 5 rotated ~ 0 run particle minecraft:flame ^ ^1 ^-1 0.2 0.2 0.2 .05 4 normal @a


