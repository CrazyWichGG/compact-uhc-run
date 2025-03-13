loot replace entity @s inventory.9 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.10 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.11 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.12 loot system:inventory_controller/disabled_slot
execute unless items entity @s inventory.13 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.settings.spectator_trails}] run loot replace entity @s inventory.13 loot system:inventory_controller/lobby_menu/settings/spectator_trails
loot replace entity @s inventory.14 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.15 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.16 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.17 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.18 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.19 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.20 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.21 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.22 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.23 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.24 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.25 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.26 loot system:inventory_controller/disabled_slot


#item modification
execute if score @s settings.personal.spectator_trails matches 0 run item modify entity @s inventory.13 system:inventory_controller/disable
execute if score @s settings.personal.spectator_trails matches 1 run item modify entity @s inventory.13 system:inventory_controller/enable