#enderchest
execute as @a at @s unless items entity @s enderchest.0 * run loot replace entity @s enderchest.0 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.1 * run loot replace entity @s enderchest.1 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.2 * run loot replace entity @s enderchest.2 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.3 * run loot replace entity @s enderchest.3 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.4 * run loot replace entity @s enderchest.4 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.5 * run loot replace entity @s enderchest.5 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.6 * run loot replace entity @s enderchest.6 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.7 * run loot replace entity @s enderchest.7 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.8 * run loot replace entity @s enderchest.8 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.9 * run loot replace entity @s enderchest.9 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.10 * run loot replace entity @s enderchest.10 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.11 * run loot replace entity @s enderchest.11 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.12 * run loot replace entity @s enderchest.12 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.13 * run loot replace entity @s enderchest.13 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.14 * run loot replace entity @s enderchest.14 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.15 * run loot replace entity @s enderchest.15 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.16 * run loot replace entity @s enderchest.16 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.17 * run loot replace entity @s enderchest.17 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.18 * run loot replace entity @s enderchest.18 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.19 * run loot replace entity @s enderchest.19 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.20 * run loot replace entity @s enderchest.20 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.21 * run loot replace entity @s enderchest.21 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.22 * run loot replace entity @s enderchest.22 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.23 * run loot replace entity @s enderchest.23 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.24 * run loot replace entity @s enderchest.24 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.25 * run loot replace entity @s enderchest.25 loot system:inventory_controller/empty_item_cache_slot
execute as @a at @s unless items entity @s enderchest.26 * run loot replace entity @s enderchest.26 loot system:inventory_controller/empty_item_cache_slot

#prevent placing enderchest
execute as @a if items entity @s weapon.mainhand ender_chest run title @s actionbar {"text":"You cannot use Ender Chest in this game!","color":"red"}

#reset enderchest
execute as @a at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace ender_chest