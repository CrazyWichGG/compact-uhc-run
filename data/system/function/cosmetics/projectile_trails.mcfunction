#happy villager
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 1 run particle happy_villager ~ ~ ~ 0 0 0 0 0 force @a
#angry villager
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 2 run particle angry_villager ~ ~-.5 ~ 0 0 0 0 0 force @a
#heart
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 3 run particle heart ~ ~ ~ 0 0 0 0 3 force @a
#enchant
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 4 run particle enchant ~ ~ ~ 0 0 0 0.1 10 force @a
#electric spark
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 5 run particle electric_spark ~ ~ ~ 0 0 0 0.5 10 force @a
#flame
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 6 run particle flame ~ ~ ~ 0 0 0 0.025 2 force @a
#dragon breath
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 7 run particle dragon_breath ~ ~ ~ 0 0 0 0.015 3 force @a
#sonic boom
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 8 run particle sonic_boom ~ ~ ~ 0 0 0 0 0 force @a
#soul fire
execute as @e[type=#system:projectiles,nbt={LeftOwner:1b}] at @s if predicate system:is_moving on origin if score @s cosmetics.projectile_trails matches 9 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.025 2 force @a

