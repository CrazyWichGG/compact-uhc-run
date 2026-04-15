# set state to pre-game
data modify storage uhc:game state set value "pre-game"

# set pre game step
scoreboard players set $step uhc.pre_game.step 0

# summon new map center
execute as @n[type=marker,nbt={data:{lobby_center:1b}}] at @s run summon marker ~ ~ ~ {data:{map_center:1b}}

# random map center
# spreadplayers ~ ~ 0 300 false @n[type=marker,nbt={data:{map_center:1b}}]

# set environment
execute as @n[type=marker,nbt={data:{map_center:1b}}] at @s run function uhc:system/pre_game/setup/environment

# set player attribute
function uhc:system/pre_game/setup/player

# gamemode based spread players
execute if data storage uhc:game {gamemode:"solo"} run function uhc:system/pre_game/setup/spreadplayers/solo
execute unless data storage uhc:game {gamemode:"solo"} run function uhc:system/pre_game/setup/spreadplayers/team

# gamemode based spawn platform
execute if data storage uhc:game {gamemode:"solo"} as @a[scores={uhc.ingame.player.role=0}] at @s run function uhc:system/pre_game/setup/spawn_platform/solo
execute unless data storage uhc:game {gamemode:"solo"} run function uhc:system/pre_game/setup/spawn_platform/team