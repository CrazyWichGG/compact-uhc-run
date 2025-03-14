loot replace entity @s inventory.9 loot system:inventory_controller/disabled_slot
execute unless items entity @s inventory.10 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.night_mode}] run loot replace entity @s inventory.10 loot system:inventory_controller/lobby_menu/custom/night_mode
execute unless items entity @s inventory.11 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.old_combat}] run loot replace entity @s inventory.11 loot system:inventory_controller/lobby_menu/custom/old_combat
execute unless items entity @s inventory.12 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.tiny}] run loot replace entity @s inventory.12 loot system:inventory_controller/lobby_menu/custom/tiny
execute unless items entity @s inventory.13 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gambling}] run loot replace entity @s inventory.13 loot system:inventory_controller/lobby_menu/custom/gambling
execute unless items entity @s inventory.14 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gun}] run loot replace entity @s inventory.14 loot system:inventory_controller/lobby_menu/custom/gun
execute unless items entity @s inventory.15 *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.lucky_block}] run loot replace entity @s inventory.15 loot system:inventory_controller/lobby_menu/custom/lucky_block
item replace entity @s inventory.16 with air
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
execute if score night-mode custom matches 0 run item modify entity @s inventory.10 system:inventory_controller/disable
execute if score night-mode custom matches 1 run item modify entity @s inventory.10 system:inventory_controller/enable

execute if score old-combat custom matches 0 run item modify entity @s inventory.11 system:inventory_controller/disable
execute if score old-combat custom matches 1 run item modify entity @s inventory.11 system:inventory_controller/enable

execute if score tiny custom matches 0 run item modify entity @s inventory.12 system:inventory_controller/disable
execute if score tiny custom matches 1 run item modify entity @s inventory.12 system:inventory_controller/enable

execute if score gambling custom matches 0 run item modify entity @s inventory.13 system:inventory_controller/disable
execute if score gambling custom matches 1 run item modify entity @s inventory.13 system:inventory_controller/enable

execute if score gun custom matches 0 run item modify entity @s inventory.14 system:inventory_controller/disable
execute if score gun custom matches 1 run item modify entity @s inventory.14 system:inventory_controller/enable

execute if score lucky-block custom matches 0 run item modify entity @s inventory.15 system:inventory_controller/disable
execute if score lucky-block custom matches 1 run item modify entity @s inventory.15 system:inventory_controller/enable


#permission detect
execute as @s[tag=!admin] unless items entity @s inventory.10 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.10 system:inventory_controller/custom_no_permission
execute as @s[tag=!admin] unless items entity @s inventory.11 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.11 system:inventory_controller/custom_no_permission
execute as @s[tag=!admin] unless items entity @s inventory.12 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.12 system:inventory_controller/custom_no_permission
execute as @s[tag=!admin] unless items entity @s inventory.13 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.13 system:inventory_controller/custom_no_permission
execute as @s[tag=!admin] unless items entity @s inventory.14 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.14 system:inventory_controller/custom_no_permission
execute as @s[tag=!admin] unless items entity @s inventory.15 *[custom_data~{no_permission:1b}] run item modify entity @s inventory.15 system:inventory_controller/custom_no_permission
