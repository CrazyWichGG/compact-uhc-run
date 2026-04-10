# schedule function

# set default
execute as @a unless score @s uhc.lobby.ready_status = @s uhc.lobby.ready_status run scoreboard players set @s uhc.lobby.ready_status 0

# update total
scoreboard players set $total_player uhc.lobby.ready_status 0
scoreboard players set $total_ready uhc.lobby.ready_status 0

execute as @a run scoreboard players add $total_player uhc.lobby.ready_status 1
execute as @a if score @s uhc.lobby.ready_status matches 1 run scoreboard players add $total_ready uhc.lobby.ready_status 1

# update bossbar
execute store result bossbar uhc:lobby.player.ready max run scoreboard players get $total_player uhc.lobby.ready_status
execute store result bossbar uhc:lobby.player.ready value run scoreboard players get $total_ready uhc.lobby.ready_status

execute unless score $total_player uhc.lobby.ready_status matches 2.. run bossbar set uhc:lobby.player.ready name {"text":"Must have at least 2 players to start the game","color":"red"}
execute unless score $total_player uhc.lobby.ready_status matches 2.. run bossbar set uhc:lobby.player.ready color red

execute if score $total_player uhc.lobby.ready_status matches 2.. unless score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run bossbar set uhc:lobby.player.ready name [{"text":"("},{"score":{"objective":"uhc.lobby.ready_status","name":"$total_ready"}},{"text":"/"},{score:{"objective":"uhc.lobby.ready_status","name":"$total_player"}},{"text":") Players Ready"}]
execute if score $total_player uhc.lobby.ready_status matches 2.. unless score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run bossbar set uhc:lobby.player.ready color green

execute if score $total_player uhc.lobby.ready_status matches 2.. if score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run bossbar set uhc:lobby.player.ready name [{"text":"(","color":"green"},{"score":{"objective":"uhc.lobby.ready_status","name":"$total_ready"},"color":"green"},{"text":"/","color":"green"},{score:{"objective":"uhc.lobby.ready_status","name":"$total_player"},"color":"green"},{"text":") Players Ready","color":"green"}]
execute if score $total_player uhc.lobby.ready_status matches 2.. if score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run bossbar set uhc:lobby.player.ready color green