# tick function
# functions that require less precision are in schedule.mcfunction

# check if game is installed
execute unless data storage uhc:game {is_installed:true} run return fail

# lobby
## detect interaction
execute if data storage uhc:game {state:"lobby"} as @a if score @s uhc.interaction.written_book matches 1.. run function uhc:system/interaction/detect_written_book
## inventory
execute if data storage uhc:game {state:"lobby"} run function uhc:system/lobby/inventory/run
## start
execute if data storage uhc:game {state:"lobby"} run function uhc:system/lobby/start/condition_check

# pre game
execute if data storage uhc:game {state:"pre-game"} run function uhc:system/pre_game/run