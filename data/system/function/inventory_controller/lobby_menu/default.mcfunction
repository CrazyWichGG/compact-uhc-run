loot replace entity @s inventory.0 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.1 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.2 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.3 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.4 loot system:inventory_controller/self_statistics
loot replace entity @s inventory.5 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.6 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.7 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.8 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.9 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.10 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.11 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.12 loot system:inventory_controller/lobby_menu/cosmetics
loot replace entity @s inventory.13 loot system:inventory_controller/lobby_menu/settings
loot replace entity @s inventory.14 loot system:inventory_controller/lobby_menu/custom
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

#permission detect
execute as @s[tag=!admin] run item modify entity @s inventory.14 system:inventory_controller/custom_no_permission