# reset xp
xp set @a 0 levels
xp set @a 0 points

# clear items
clear @a

# gamemode
gamemode adventure @a[scores={uhc.ingame.player.role=0}]
gamemode spectator @a[scores={uhc.ingame.player.role=1}]

# attribute
execute as @a run attribute @s max_health base set 40

# effects
effect clear @a
effect give @a regeneration 10 255
effect give @a absorption infinite 2

# recipe
recipe give @a *

# weather and time
time set day
weather clear