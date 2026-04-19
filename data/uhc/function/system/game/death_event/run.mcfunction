execute as @a if score @s uhc.stats.temp_death matches 1.. run return run function uhc:system/game/death_event/death

execute as @a run scoreboard players reset @s uhc.stats.temp_death