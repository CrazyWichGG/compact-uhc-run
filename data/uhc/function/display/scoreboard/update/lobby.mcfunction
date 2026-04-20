# setdisplay
execute if data storage uhc:game {state:"lobby"} run scoreboard objectives setdisplay sidebar uhc.scoreboard_display.lobby

# mode
execute if data storage uhc:game {gamemode:"solo"} run scoreboard players display name $line5 uhc.scoreboard_display.lobby [{text:"Mode: ",color:"white"},{text:"Solo",color:"gold"}]
execute unless data storage uhc:game {gamemode:"solo"} run scoreboard players display name $line5 uhc.scoreboard_display.lobby [{text:"Mode: ",color:"white"},{text:"Team",color:"gold"}]

# ready status
execute if score $total_player uhc.lobby.ready_status matches 2.. if score $total_ready uhc.lobby.ready_status = $total_player uhc.lobby.ready_status run return run scoreboard players display name $line3 uhc.scoreboard_display.lobby {text:"Starting...",color:"green"}
scoreboard players display name $line3 uhc.scoreboard_display.lobby "Waiting..."
