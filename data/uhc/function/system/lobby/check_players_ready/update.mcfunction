# update scores
scoreboard players set $total_players uhc.lobby.player.ready 0
scoreboard players set $ready_players uhc.lobby.player.ready 0
execute as @a run scoreboard players add $total_players uhc.lobby.player.ready 1
execute as @a[scores={uhc.lobby.player.is_ready=1}] run scoreboard players add $ready_players uhc.lobby.player.ready 1

# update bossbar
## not enough players
execute if score $total_players uhc.lobby.player.ready matches ..1 run bossbar set uhc:lobby.player.ready name [{"text":"Must be at least 2 players to start the game.","color":"red"}]
execute if score $total_players uhc.lobby.player.ready matches ..1 run bossbar set uhc:lobby.player.ready color red
## enough players
execute if score $total_players uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready name [{"text":"("},{"score":{"objective":"uhc.lobby.player.ready","name":"$ready_players"}},{"text":"/"},{score:{"objective":"uhc.lobby.player.ready","name":"$total_players"}},{"text":") Players Ready"}]
execute if score $total_players uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready color green

execute store result bossbar uhc:lobby.player.ready max run scoreboard players get $total_players uhc.lobby.player.ready
execute store result bossbar uhc:lobby.player.ready value run scoreboard players get $ready_players uhc.lobby.player.ready