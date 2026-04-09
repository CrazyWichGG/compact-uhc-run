item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air

execute unless items entity @s hotbar.4 *[custom_data~{uhc_item_name:"ready_item"}] run loot replace entity @s hotbar.4 loot uhc:lobby/ready_item_template
execute if score @s uhc.lobby.player.ready matches 1 run item modify entity @s hotbar.4 uhc:lobby/ready_item_ready
execute if score @s uhc.lobby.player.ready matches 0 run item modify entity @s hotbar.4 uhc:lobby/ready_item_not_ready

item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air