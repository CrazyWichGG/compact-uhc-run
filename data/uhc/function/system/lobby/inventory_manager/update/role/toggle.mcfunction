# trigger by advancement
advancement revoke @s only uhc:inventory_manager/lobby/use_role_selector

execute if items entity @s hotbar.8 *[custom_data~{uhc:{lobby:{selected_role:"player"}}}] run return run function uhc:system/lobby/inventory_manager/update/role/set_observer
execute if items entity @s hotbar.8 *[custom_data~{uhc:{lobby:{selected_role:"observer"}}}] run return run function uhc:system/lobby/inventory_manager/update/role/set_player
