# title
title @s subtitle "You are now a spectator"
title @s title {text:"YOU DIED!",color:"red"}

# add tag
tag @s add uhc.dead

# change team if mode is solo
execute if data storage uhc:game {gamemode:"solo"} run team join uhc.ingame.solo.spectator

# reset score
scoreboard players reset @s uhc.stats.temp_death