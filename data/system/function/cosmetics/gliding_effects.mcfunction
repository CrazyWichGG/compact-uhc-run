#default smoke
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 0 rotated ~ 0 run particle minecraft:cloud ^ ^1 ^-1 0.2 0.2 0.2 0 5 force @a
#cherry leaves
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 1 rotated ~ 0 run particle minecraft:cherry_leaves ^ ^1 ^-1 0.5 0.5 0.5 0 5 force @a
#force
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 2 rotated ~ 0 run particle minecraft:totem_of_undying ^ ^1 ^-1 0 0 0 0.2 5 force @a
#heart
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 3 rotated ~ 0 run particle minecraft:heart ^ ^1 ^-1 0.2 0.2 0.2 0 3 force @a
#flame
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 4 rotated ~ 0 run particle minecraft:flame ^ ^1 ^-1 0.2 0.2 0.2 .05 4 force @a
#soul fire
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 5 rotated ~ 0 run particle minecraft:soul_fire_flame ^ ^1 ^-1 0.2 0.2 0.2 .05 4 force @a
#soul
execute as @a[tag=gliding] at @s if score @s cosmetics.gliding_effects matches 6 rotated ~ 0 run particle minecraft:soul ^ ^1 ^-1 0.3 0.3 0.3 .05 5 force @a

