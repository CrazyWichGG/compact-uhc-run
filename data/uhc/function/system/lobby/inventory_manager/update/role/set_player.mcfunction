# set to player
scoreboard players set @s uhc.lobby.player.selected_role 0
loot replace entity @s hotbar.8 loot uhc:inventory_manager/lobby/role_selector_player

# reset ready status
scoreboard players set @s uhc.lobby.player.is_ready 0
loot replace entity @s hotbar.4 loot uhc:inventory_manager/lobby/ready_item_not_ready