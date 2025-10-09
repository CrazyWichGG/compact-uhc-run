# trigger by advancement
advancement revoke @s only uhc:inventory_manager/lobby/use_ready_item

execute if items entity @s hotbar.4 *[custom_data~{uhc:{lobby:{is_ready:0b}}}] run return run function uhc:system/lobby/inventory_manager/update/ready_status/set_ready
execute if items entity @s hotbar.4 *[custom_data~{uhc:{lobby:{is_ready:1b}}}] run return run function uhc:system/lobby/inventory_manager/update/ready_status/set_not_ready
