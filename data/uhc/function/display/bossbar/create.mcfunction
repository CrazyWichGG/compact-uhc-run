# lobby
## ready status
bossbar add uhc:lobby.ready_status "uhc:lobby.ready_status"
bossbar set uhc:lobby.ready_status color green
bossbar set uhc:lobby.ready_status style notched_10
bossbar set uhc:lobby.ready_status players @a
bossbar set uhc:lobby.ready_status visible true

# pre game
## progress bossbar
bossbar add uhc:pre_game.loading_process "uhc:pre_game.loading_process"
bossbar set uhc:pre_game.loading_process color yellow
bossbar set uhc:pre_game.loading_process style notched_10
bossbar set uhc:pre_game.loading_process players @a
bossbar set uhc:pre_game.loading_process visible false
bossbar set uhc:pre_game.loading_process value 1
bossbar set uhc:pre_game.loading_process max 1