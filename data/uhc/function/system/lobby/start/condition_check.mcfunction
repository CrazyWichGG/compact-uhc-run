# tick function


# set title times
execute if score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run title @a times 0 70 20
execute unless score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run title @a reset

# countdown fail
execute unless score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status if score $countdown uhc.lobby.start_countdown matches 0..399 run function uhc:system/lobby/start/countdown_fail

# reset timer if all not ready
execute unless score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run return run scoreboard players set $countdown uhc.lobby.start_countdown 400

# play countdown if all ready
function uhc:system/lobby/start/play_countdown

# run start script if countdown finishes
execute if score $countdown uhc.lobby.start_countdown matches ..0 run return run function uhc:system/lobby/start/start_script

# decrease countdown if all ready
scoreboard players remove $countdown uhc.lobby.start_countdown 1