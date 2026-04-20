# check if game is installed
execute unless data storage uhc:game {is_installed:true} run return fail

# lobby
## ready check
execute if data storage uhc:game {state:"lobby"} run function uhc:system/lobby/ready/check

# display
execute if data storage uhc:game {state:"lobby"} run function uhc:display/scoreboard/update/lobby

# repeat function
schedule function uhc:system/schedule 5t replace