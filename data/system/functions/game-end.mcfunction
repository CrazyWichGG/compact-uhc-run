worldborder center ~ ~
worldborder set 1000
team empty ingame
tp @a ~ ~2 ~
effect clear @a
scoreboard objectives setdisplay list
gamemode adventure @a
scoreboard players set @a kills 0
scoreboard players set @a death 0
kill @e[type=item]
kill @e[type=wandering_trader]
clear @a
xp set @a 0 levels
scoreboard players set before-end timer 0
title @a reset