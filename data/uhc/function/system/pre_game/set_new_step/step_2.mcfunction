# set step
scoreboard players set $step uhc.pre_game 2

# annouce load time
tellraw @a [{text:"Successfully loaded all chunks in "},{score:{name:"$load_time",objective:"uhc.pre_game"}}]

# rename bossbar
bossbar set uhc:pre_game.loading_process name {text:"Starting the game...",color:"white"}
bossbar set uhc:pre_game.loading_process color green

# kill stopwatch
stopwatch remove uhc:pre_game.load_time

# set countdown timer
scoreboard players set $countdown uhc.pre_game 200

# reset titles
title @a reset
title @a actionbar ""