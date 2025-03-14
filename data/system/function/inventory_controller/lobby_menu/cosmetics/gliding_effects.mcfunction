loot replace entity @s inventory.9 loot system:inventory_controller/disabled_slot
execute unless items entity @s inventory.10 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.default}] run loot replace entity @s inventory.10 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/default
execute unless items entity @s inventory.11 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.cherry_leaves}] run loot replace entity @s inventory.11 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/cherry_leaves
execute unless items entity @s inventory.12 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.totem}] run loot replace entity @s inventory.12 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/totem
execute unless items entity @s inventory.13 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.heart}] run loot replace entity @s inventory.13 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/heart
execute unless items entity @s inventory.14 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.soul}] run loot replace entity @s inventory.14 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/soul
execute unless items entity @s inventory.15 *[custom_data~{inventory_controller:1b,is_selected:0b,inventory_controller_item:lobby_menu.cosmetics.gliding_effects.flame}] run loot replace entity @s inventory.15 loot system:inventory_controller/lobby_menu/cosmetics/gliding_effects/flame
item replace entity @s inventory.16 with air
loot replace entity @s inventory.17 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.18 loot system:inventory_controller/disabled_slot
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
loot replace entity @s inventory.26 loot system:inventory_controller/disabled_slot

#item modification
execute if score @s cosmetics.gliding_effects matches 0 run item modify entity @s inventory.10 system:inventory_controller/selected
execute if score @s cosmetics.gliding_effects matches 1 run item modify entity @s inventory.11 system:inventory_controller/selected
execute if score @s cosmetics.gliding_effects matches 2 run item modify entity @s inventory.12 system:inventory_controller/selected
execute if score @s cosmetics.gliding_effects matches 3 run item modify entity @s inventory.13 system:inventory_controller/selected
execute if score @s cosmetics.gliding_effects matches 4 run item modify entity @s inventory.14 system:inventory_controller/selected
execute if score @s cosmetics.gliding_effects matches 5 run item modify entity @s inventory.15 system:inventory_controller/selected


