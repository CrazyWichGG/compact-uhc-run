# tick function

# lobby
execute if items entity @s weapon.mainhand *[custom_data~{uhc_item_name:"ready_item",uhc_item_properties:{is_ready:0b}}] run return run function uhc:system/lobby/ready/set_ready
execute if items entity @s weapon.mainhand *[custom_data~{uhc_item_name:"ready_item",uhc_item_properties:{is_ready:1b}}] run return run function uhc:system/lobby/ready/set_not_ready



# reset 
scoreboard players reset @s uhc.interaction.written_book