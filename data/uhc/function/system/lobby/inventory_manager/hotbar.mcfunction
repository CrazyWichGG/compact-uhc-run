item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
# team selector if not solo
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air

# hotbar controller
## team selector
execute unless items entity @s hotbar.3 *[custom_data~{uhc:{item:"team_selector"}}] run loot replace entity @s hotbar.3 loot uhc:inventory_manager/lobby/team_selector_template
# ready status
execute as @s[scores={uhc.lobby.player.is_ready=0}] unless items entity @s hotbar.4 *[custom_data~{uhc:{item:"ready_item"}}] run loot replace entity @s hotbar.4 loot uhc:inventory_manager/lobby/ready_item_not_ready
execute as @s[scores={uhc.lobby.player.is_ready=1}] unless items entity @s hotbar.4 *[custom_data~{uhc:{item:"ready_item"}}] run loot replace entity @s hotbar.4 loot uhc:inventory_manager/lobby/ready_item_ready
## role selector
execute as @s[scores={uhc.lobby.player.selected_role=0}] unless items entity @s hotbar.8 *[custom_data~{uhc:{item:"role_selector"}}] run loot replace entity @s hotbar.8 loot uhc:inventory_manager/lobby/role_selector_player
execute as @s[scores={uhc.lobby.player.selected_role=1}] unless items entity @s hotbar.8 *[custom_data~{uhc:{item:"role_selector"}}] run loot replace entity @s hotbar.8 loot uhc:inventory_manager/lobby/role_selector_observer
