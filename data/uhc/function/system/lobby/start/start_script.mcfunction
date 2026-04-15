# disable countdown
scoreboard players set $countdown uhc.lobby.start_countdown -1

# title display
title @a subtitle {"text":"Teleporting...","color":"yellow"}
title @a title ""
execute as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

# run pre-game setup
function uhc:system/pre_game/start_setup

tellraw @a "Start script finished"