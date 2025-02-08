#enderchest
execute as @a at @s unless items entity @s enderchest.0 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.0 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.1 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.1 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.2 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.2 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.3 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.3 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.4 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.4 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.5 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.5 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.6 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.6 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.7 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.7 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.8 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.8 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.9 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.9 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.10 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.10 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.11 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.11 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.12 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.12 loot system:inventory_handler/inventory_unusable_slot
#execute as @a at @s unless items entity @s enderchest.13 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.13 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.13 * run loot replace entity @s enderchest.13 loot system:inventory_handler/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.14 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.14 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.15 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.15 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.16 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.16 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.17 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.17 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.18 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.18 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.19 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.19 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.20 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.20 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.21 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.21 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.22 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.22 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.23 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.23 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.24 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.24 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.25 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.25 loot system:inventory_handler/inventory_unusable_slot
execute as @a at @s unless items entity @s enderchest.26 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s enderchest.26 loot system:inventory_handler/inventory_unusable_slot

#prevent placing enderchest
execute as @a if items entity @s weapon.mainhand ender_chest run title @s actionbar {"text":"You cannot use Ender Chest in this game!","color":"red"}

#reset enderchest
execute as @a at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace ender_chest