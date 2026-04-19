# join team
execute if data storage uhc:game {gamemode:"solo"} run team join uhc.ingame.solo.player @a[scores={uhc.ingame.player_role=0}]

# reset xp
xp set @a 0 levels
xp set @a 0 points

# clear items
clear @a

# gamemode
gamemode adventure @a[scores={uhc.ingame.player_role=0}]
gamemode spectator @a[scores={uhc.ingame.player_role=1}]

# attribute
execute as @a run attribute @s max_health base set 40

# effects
effect clear @a
effect give @a regeneration 10 255 true
effect give @a absorption infinite 2 true

# recipe
recipe give @a *