# spread players
execute as @n[type=marker,nbt={data:{map_center:1b}}] at @s run spreadplayers ~ ~ 200 700 false @a[scores={uhc.ingame.player_role=0}]

# tp to sky
execute as @a[scores={uhc.ingame.player_role=0}] at @s run tp @s ~ ~200 ~

# check location
execute as @a[scores={uhc.ingame.player_role=0}] at @s unless predicate uhc:is_acceptable_spawn_location run return run function uhc:system/pre_game/setup/spreadplayers/solo