#static item only (actions for items please see inventory-item-handler-action.mcfunction)

#clear entity item
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{inventory-handler:1b}}}}]

#action bar title
execute if score lobby game-state matches 1 as @a at @s run title @s actionbar [{"text":"Press ","color":"white"},{"text":"[","color":"green"},{"keybind": "key.inventory","color":"green"},{"text":"]","color":"green"},{"text":" to view your statistics and more","color":"white"}]

#lobby
# -armor
execute if score lobby game-state matches 1 as @a at @s unless items entity @s armor.head air run item replace entity @a armor.head with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s armor.chest air run item replace entity @a armor.chest with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s armor.legs air run item replace entity @a armor.legs with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s armor.feet air run item replace entity @a armor.feet with air

# -offhand
execute if score lobby game-state matches 1 as @a at @s unless items entity @s weapon.offhand air run item replace entity @s weapon.offhand with air

# -crafting
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.0 air run item replace entity @s player.crafting.0 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.1 air run item replace entity @s player.crafting.1 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.2 air run item replace entity @s player.crafting.2 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.3 air run item replace entity @s player.crafting.3 with air

# -inventory (inventory handler)
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.0 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.0 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.1 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.1 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.2 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.2 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.3 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.3 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.4 player_head[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.4 loot system:inventory_handler/self_statistics_item
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.5 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.5 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.6 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.6 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.7 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.7 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a at @s unless items entity @s inventory.8 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.8 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.9 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.10 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.11 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.12 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.13 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.14 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.15 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.16 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.17 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.18 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.19 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.20 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.21 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.22 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.23 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.24 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.25 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run item replace entity @s inventory.26 with air

# -hotbar (inventory handler for creative player)
execute if score lobby game-state matches 1 as @a[gamemode=creative] at @s if items entity @s container.* *[custom_data={inventory-handler:1b}] run clear @s *[custom_data={inventory-handler:1b}]

# -hotbar (non-creative player)
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.0 air run item replace entity @s hotbar.0 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.1 air run item replace entity @s hotbar.1 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.2 air run item replace entity @s hotbar.2 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.3 air run item replace entity @s hotbar.3 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.4 air run item replace entity @s hotbar.4 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.5 air run item replace entity @s hotbar.5 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.6 air run item replace entity @s hotbar.6 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.7 air run item replace entity @s hotbar.7 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s unless items entity @s hotbar.8 air run item replace entity @s hotbar.8 with air


#ingame spectator (not spectating) (spectator cannot access their inventory)
# -armor
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s armor.head air run item replace entity @s armor.head with air
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s armor.chest air run item replace entity @s armor.chest with air
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s armor.legs air run item replace entity @s armor.legs with air
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s armor.feet air run item replace entity @s armor.feet with air

# -offhand
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s weapon.offhand air run item replace entity @s weapon.offhand with air

# -hotbar
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.0 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.0 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.1 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.1 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.2 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.2 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.3 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.3 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.4 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.4 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.5 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.5 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.6 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.6 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.7 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.7 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s hotbar.8 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s hotbar.8 loot system:inventory_handler/inventory_unusable_slot

# -inventory
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.0 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.0 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.1 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.1 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.2 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.2 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.3 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.3 loot system:inventory_handler/inventory_unusable_slot
#execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.4 comparator[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.4 loot system:entities/spectator_settings_item
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.4 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.4 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.5 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.5 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.6 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.6 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.7 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.7 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.8 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.8 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.9 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.9 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.10 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.10 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.11 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.11 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.12 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.12 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.13 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.13 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.14 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.14 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.15 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.15 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.16 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.16 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.17 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.17 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.18 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.18 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.19 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.19 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.20 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.20 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.21 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.21 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.22 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.22 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.23 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.23 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.24 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.24 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.25 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.25 loot system:inventory_handler/inventory_unusable_slot
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.26 gray_stained_glass_pane[custom_data={inventory-handler:1b}] run loot replace entity @s inventory.26 loot system:inventory_handler/inventory_unusable_slot

# -settings (spectator cannot access their inventory)
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 if score @s settings-personal-spectator-trail matches 0 run loot replace entity @s inventory.9 loot system:entities/spectator_settings_trail_disable
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 if score @s settings-personal-spectator-trail matches 1 run loot replace entity @s inventory.9 loot system:entities/spectator_settings_trail_enable

# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.10 air run item replace entity @s inventory.10 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.11 air run item replace entity @s inventory.11 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.12 air run item replace entity @s inventory.12 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.13 air run item replace entity @s inventory.13 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.14 air run item replace entity @s inventory.14 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.15 air run item replace entity @s inventory.15 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.16 air run item replace entity @s inventory.16 with air
# execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches ..0 unless items entity @s inventory.17 air run item replace entity @s inventory.17 with air


#ingame spectator (spectating)
# -armor
#execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s armor.head with player_head[custom_data={inventory-handler:1b}]
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. as @a[team=ingame,limit=1,sort=nearest] at @s run loot replace entity @a[team=spectator,gamemode=spectator,distance=..1,scores={spectator-spectate-player=1..}] armor.head loot system:inventory_handler/spectate_player_head_item
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s armor.chest from entity @a[team=ingame,limit=1,sort=nearest] armor.chest system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s armor.legs from entity @a[team=ingame,limit=1,sort=nearest] armor.legs system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s armor.feet from entity @a[team=ingame,limit=1,sort=nearest] armor.feet system:apply_inventory_handler

# -offhand
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s weapon.offhand from entity @a[team=ingame,limit=1,sort=nearest] weapon.offhand system:apply_inventory_handler

# -crafting
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s player.crafting.0 from entity @a[team=ingame,limit=1,sort=nearest] player.crafting.0 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s player.crafting.1 from entity @a[team=ingame,limit=1,sort=nearest] player.crafting.1 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s player.crafting.2 from entity @a[team=ingame,limit=1,sort=nearest] player.crafting.2 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s player.crafting.3 from entity @a[team=ingame,limit=1,sort=nearest] player.crafting.3 system:apply_inventory_handler

# -inventory
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.0 from entity @a[team=ingame,limit=1,sort=nearest] inventory.0 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.1 from entity @a[team=ingame,limit=1,sort=nearest] inventory.1 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.2 from entity @a[team=ingame,limit=1,sort=nearest] inventory.2 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.3 from entity @a[team=ingame,limit=1,sort=nearest] inventory.3 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.4 from entity @a[team=ingame,limit=1,sort=nearest] inventory.4 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.5 from entity @a[team=ingame,limit=1,sort=nearest] inventory.5 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.6 from entity @a[team=ingame,limit=1,sort=nearest] inventory.6 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.7 from entity @a[team=ingame,limit=1,sort=nearest] inventory.7 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.8 from entity @a[team=ingame,limit=1,sort=nearest] inventory.8 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.9 from entity @a[team=ingame,limit=1,sort=nearest] inventory.9 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.10 from entity @a[team=ingame,limit=1,sort=nearest] inventory.10 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.11 from entity @a[team=ingame,limit=1,sort=nearest] inventory.11 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.12 from entity @a[team=ingame,limit=1,sort=nearest] inventory.12 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.13 from entity @a[team=ingame,limit=1,sort=nearest] inventory.13 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.14 from entity @a[team=ingame,limit=1,sort=nearest] inventory.14 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.15 from entity @a[team=ingame,limit=1,sort=nearest] inventory.15 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.16 from entity @a[team=ingame,limit=1,sort=nearest] inventory.16 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.17 from entity @a[team=ingame,limit=1,sort=nearest] inventory.17 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.18 from entity @a[team=ingame,limit=1,sort=nearest] inventory.18 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.19 from entity @a[team=ingame,limit=1,sort=nearest] inventory.19 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.20 from entity @a[team=ingame,limit=1,sort=nearest] inventory.20 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.21 from entity @a[team=ingame,limit=1,sort=nearest] inventory.21 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.22 from entity @a[team=ingame,limit=1,sort=nearest] inventory.22 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.23 from entity @a[team=ingame,limit=1,sort=nearest] inventory.23 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.24 from entity @a[team=ingame,limit=1,sort=nearest] inventory.24 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.25 from entity @a[team=ingame,limit=1,sort=nearest] inventory.25 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s inventory.26 from entity @a[team=ingame,limit=1,sort=nearest] inventory.26 system:apply_inventory_handler

# -hotbar
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.0 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.0 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.1 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.1 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.2 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.2 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.3 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.3 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.4 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.4 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.5 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.5 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.6 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.6 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.7 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.7 system:apply_inventory_handler
execute if score lobby game-state matches 0 as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run item replace entity @s hotbar.8 from entity @a[team=ingame,limit=1,sort=nearest] hotbar.8 system:apply_inventory_handler