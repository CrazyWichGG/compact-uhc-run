# schedule function

# set default
execute as @a unless score @s uhc.lobby.player.ready = @s uhc.lobby.player.ready run scoreboard players set @s uhc.lobby.player.ready 0

# update total
scoreboard players set $total_player uhc.lobby.player.ready 0
scoreboard players set $total_ready uhc.lobby.player.ready 0

execute as @a run scoreboard players add $total_player uhc.lobby.player.ready 1
execute as @a if score @s uhc.lobby.player.ready matches 1 run scoreboard players add $total_ready uhc.lobby.player.ready 1

# update bossbar
execute store result bossbar uhc:lobby.player.ready max run scoreboard players get $total_player uhc.lobby.player.ready
execute store result bossbar uhc:lobby.player.ready value run scoreboard players get $total_ready uhc.lobby.player.ready

execute unless score $total_player uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready name {"text":"Must have at least 2 players to start the game","color":"red"}
execute unless score $total_player uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready color red

execute if score $total_player uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready name [{"text":"("},{"score":{"objective":"uhc.lobby.player.ready","name":"$total_ready"}},{"text":"/"},{score:{"objective":"uhc.lobby.player.ready","name":"$total_player"}},{"text":") Players Ready"}]
execute if score $total_player uhc.lobby.player.ready matches 2.. run bossbar set uhc:lobby.player.ready color green