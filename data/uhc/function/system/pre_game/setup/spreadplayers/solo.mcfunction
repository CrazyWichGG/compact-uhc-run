# set default attempt
execute unless score $spread_attemps uhc.pre_game = $spread_attemps uhc.pre_game run scoreboard players set $spread_attempts uhc.pre_game 0

# spread players
execute as @n[type=marker,nbt={data:{map_center:1b}}] at @s run spreadplayers ~ ~ 200 700 false @a[scores={uhc.ingame.player_role=0}]

# tp to sky
execute as @a[scores={uhc.ingame.player_role=0}] at @s run tp @s ~ ~200 ~

# add attempts
scoreboard players add $spread_attempts uhc.pre_game 1

# check if reached attempt limit
execute if score $spread_attempts uhc.pre_game matches 100.. run return run scoreboard players reset $spread_attempts uhc.pre_game

# check location
execute as @a[scores={uhc.ingame.player_role=0}] at @s unless predicate uhc:is_acceptable_spawn_location run function uhc:system/pre_game/setup/spreadplayers/solo

# reset spread_attempts
scoreboard players reset $spread_attempts uhc.pre_game