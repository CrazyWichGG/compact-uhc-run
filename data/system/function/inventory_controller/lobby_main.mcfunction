#default page
execute as @a unless score @s inventory_controller.active_page = @s inventory_controller.active_page run scoreboard players set @s inventory_controller.active_page 0

#action bar title
execute if score lobby game-state matches 1 as @a at @s run title @s actionbar [{"text":"Press ","color":"white"},{"text":"[","color":"green"},{"keybind": "key.inventory","color":"green"},{"text":"]","color":"green"},{"text":" to view your statistics and more","color":"white"}]


#clear entity item
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{inventory_controller:1b}}}}]


#default inventory behavior
# -armor
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s armor.head air run item replace entity @s armor.head with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s armor.chest air run item replace entity @s armor.chest with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s armor.legs air run item replace entity @s armor.legs with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s armor.feet air run item replace entity @s armor.feet with air

# -offhand
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s weapon.offhand air run item replace entity @s weapon.offhand with air

# -crafting
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.0 air run item replace entity @s player.crafting.0 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.1 air run item replace entity @s player.crafting.1 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.2 air run item replace entity @s player.crafting.2 with air
execute if score lobby game-state matches 1 as @a at @s unless items entity @s player.crafting.3 air run item replace entity @s player.crafting.3 with air

# -hotbar
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.0 air run item replace entity @s hotbar.0 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.1 air run item replace entity @s hotbar.1 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.2 air run item replace entity @s hotbar.2 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.3 air run item replace entity @s hotbar.3 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.4 air run item replace entity @s hotbar.4 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.5 air run item replace entity @s hotbar.5 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.6 air run item replace entity @s hotbar.6 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.7 air run item replace entity @s hotbar.7 with air
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s unless items entity @s hotbar.8 air run item replace entity @s hotbar.8 with air

#clear creative inventory
execute if score lobby game-state matches 1 as @a[gamemode=creative] at @s run clear @s *[custom_data~{inventory_controller:1b}]


#menu page controller
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if score @s inventory_controller.active_page matches 0 run function system:inventory_controller/lobby_menu/default
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if score @s inventory_controller.active_page matches 1.. run function system:inventory_controller/topbar_controller
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if score @s inventory_controller.active_page matches 1000 run function system:inventory_controller/lobby_menu/cosmetics
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if score @s inventory_controller.active_page matches 2000 run function system:inventory_controller/lobby_menu/settings
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if score @s inventory_controller.active_page matches 3000 run function system:inventory_controller/lobby_menu/custom

#on click behavior
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:home}] run scoreboard players set @s inventory_controller.active_page 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.cosmetics}] run scoreboard players set @s inventory_controller.active_page 1000
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.settings}] run scoreboard players set @s inventory_controller.active_page 2000
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom}] run scoreboard players set @s inventory_controller.active_page 3000

# -back gesture
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:back_arrow}] unless score @s inventory_controller.active_page matches 1100..1999 run scoreboard players set @s inventory_controller.active_page 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:back_arrow}] if score @s inventory_controller.active_page matches 1100..1999 run scoreboard players set @s inventory_controller.active_page 1000

# -settings
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.settings.spectator_trails,is_enabled:0b}] run scoreboard players set @s settings.personal.spectator_trails 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.settings.spectator_trails,is_enabled:1b}] run scoreboard players set @s settings.personal.spectator_trails 0

# -custom
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.night_mode,is_enabled:0b}] run scoreboard players set night-mode custom 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.night_mode,is_enabled:1b}] run scoreboard players set night-mode custom 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.old_combat,is_enabled:0b}] run scoreboard players set old-combat custom 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.old_combat,is_enabled:1b}] run scoreboard players set old-combat custom 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.tiny,is_enabled:0b}] run scoreboard players set tiny custom 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.tiny,is_enabled:1b}] run scoreboard players set tiny custom 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gambling,is_enabled:0b}] run scoreboard players set gambling custom 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gambling,is_enabled:1b}] run scoreboard players set gambling custom 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gun,is_enabled:0b}] run scoreboard players set gun custom 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.gun,is_enabled:1b}] run scoreboard players set gun custom 0
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s if items entity @s player.cursor *[custom_data~{inventory_controller:1b,inventory_controller_item:lobby_menu.custom.lucky_block}] run playsound block.note_block.bass master @s ~ ~ ~ 1 0 1

# --playsound
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s if items entity @s player.cursor *[custom_data~{inventory_controller:1b,is_enabled:0b}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s if items entity @s player.cursor *[custom_data~{inventory_controller:1b,is_enabled:1b}] run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

#empty hand item
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] if items entity @s player.cursor *[custom_data~{inventory_controller:1b}] run item replace entity @s player.cursor with air