loot replace entity @s inventory.9 loot system:inventory_controller/disabled_slot
execute unless items entity @s inventory.10 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.none}] run loot replace entity @s inventory.10 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/none
execute unless items entity @s inventory.11 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.happy_villager}] run loot replace entity @s inventory.11 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/happy_villager
execute unless items entity @s inventory.12 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.angry_villager}] run loot replace entity @s inventory.12 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/angry_villager
execute unless items entity @s inventory.13 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.heart}] run loot replace entity @s inventory.13 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/heart
execute unless items entity @s inventory.14 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.enchant}] run loot replace entity @s inventory.14 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/enchant
execute unless items entity @s inventory.15 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.electric_spark}] run loot replace entity @s inventory.15 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/electric_spark
execute unless items entity @s inventory.16 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.flame}] run loot replace entity @s inventory.16 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/flame
loot replace entity @s inventory.17 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.18 loot system:inventory_controller/disabled_slot
execute unless items entity @s inventory.19 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.dragon_breath}] run loot replace entity @s inventory.19 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/dragon_breath
execute unless items entity @s inventory.20 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.sonic_boom}] run loot replace entity @s inventory.20 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/sonic_boom
execute unless items entity @s inventory.21 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.projectile_trails.soul_fire}] run loot replace entity @s inventory.21 loot system:inventory_controller/lobby_menu/cosmetics/projectile_trails/soul_fire
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
loot replace entity @s inventory.26 loot system:inventory_controller/disabled_slot

#item modification
execute if score @s cosmetics.projectile_trails matches 0 run item modify entity @s inventory.10 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 1 run item modify entity @s inventory.11 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 2 run item modify entity @s inventory.12 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 3 run item modify entity @s inventory.13 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 4 run item modify entity @s inventory.14 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 5 run item modify entity @s inventory.15 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 6 run item modify entity @s inventory.16 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 7 run item modify entity @s inventory.19 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 8 run item modify entity @s inventory.20 system:inventory_controller/selected
execute if score @s cosmetics.projectile_trails matches 9 run item modify entity @s inventory.21 system:inventory_controller/selected


