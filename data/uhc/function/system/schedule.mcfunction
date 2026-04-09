# lobby
## ready check
execute if data storage uhc:game {state:"lobby"} run function uhc:system/lobby/ready/check

# repeat function
schedule function uhc:system/schedule 5t