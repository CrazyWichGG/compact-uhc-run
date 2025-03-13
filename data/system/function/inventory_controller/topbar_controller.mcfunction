loot replace entity @s inventory.0 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.1 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.2 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.3 loot system:inventory_controller/disabled_slot
# loot replace entity @s inventory.4 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.5 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.6 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.7 loot system:inventory_controller/disabled_slot
loot replace entity @s inventory.8 loot system:inventory_controller/back_arrow

execute if score @s inventory_controller.active_page matches 1000..1999 run item replace entity @s inventory.4 with pink_petals[custom_name='{"text":"Cosmetics","color":"light_purple","italic":false}',custom_data={inventory_controller:1b}]

execute if score @s inventory_controller.active_page matches 2000..2999 run item replace entity @s inventory.4 with comparator[custom_name='{"text":"Settings","color":"red","italic":false}',custom_data={inventory_controller:1b}]
execute if score @s inventory_controller.active_page matches 3000..3999 run item replace entity @s inventory.4 with command_block_minecart[custom_name='{"text":"Custom","color":"yellow","italic":false}',custom_data={inventory_controller:1b}]
