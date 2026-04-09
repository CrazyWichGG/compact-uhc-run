# tick function
# functions that require less precision are in schedule.mcfunction

# lobby
## detect interaction
execute if data storage uhc:game {state:"lobby"} as @a if score @s uhc.interaction.written_book matches 1.. run function uhc:system/interaction/detect_written_book
## inventory
execute if data storage uhc:game {state:"lobby"} run function uhc:system/lobby/inventory/run

