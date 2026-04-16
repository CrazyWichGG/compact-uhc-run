# set step
scoreboard players set $step uhc.pre_game 3

# remove bossbar
bossbar remove uhc:pre_game.loading_process

# clear effect
effect clear @a blindness

# reset titles
title @a reset

function uhc:system/pre_game/finish_setup