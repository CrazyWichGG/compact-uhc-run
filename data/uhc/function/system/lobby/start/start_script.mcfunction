# disable countdown
scoreboard players set $countdown uhc.lobby.start_countdown -1

# run pre-game setup
function uhc:system/pre_game/start_setup

tellraw @a "Start script finished"