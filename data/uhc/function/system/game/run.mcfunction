# run subsystem
function uhc:system/game/gliding/gliding
function uhc:system/game/death_event/run

# check win
function uhc:system/game/check_win/check

# store timestamp
execute store result score $current_time uhc.ingame.timestamp run stopwatch query uhc:ingame.game_time

# check if current time matches
execute if score $current_time uhc.ingame.timestamp >= $pvp_on uhc.ingame.timestamp run function uhc:system/game/timestamp_event/pvp_on
execute if score $current_time uhc.ingame.timestamp >= $border_shrink uhc.ingame.timestamp run function uhc:system/game/timestamp_event/border_shrink
execute if score $current_time uhc.ingame.timestamp >= $border_stop uhc.ingame.timestamp run function uhc:system/game/timestamp_event/border_stop
execute if score $current_time uhc.ingame.timestamp >= $deathmatch uhc.ingame.timestamp run function uhc:system/game/timestamp_event/deathmatch