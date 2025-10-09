# set bossbar to players
bossbar set uhc:lobby.player.ready players @a
execute if data storage uhc:data {game:{state:"lobby"}} run bossbar set uhc:lobby.player.ready visible true
execute unless data storage uhc:data {game:{state:"lobby"}} run bossbar set uhc:lobby.player.ready visible false

# update
execute if data storage uhc:data {game:{state:"lobby"}} run function uhc:system/lobby/check_players_ready/update