# trigger function from uhc:system/interaction/detect_written_book

scoreboard players set @s uhc.lobby.ready_status 0
item modify entity @s hotbar.4 uhc:lobby/ready_item_not_ready

# reset value
scoreboard players reset @s uhc.interaction.written_book