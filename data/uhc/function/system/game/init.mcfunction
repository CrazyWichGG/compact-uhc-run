# code related to the game phase
# set state to ingame
data modify storage uhc:game state set value "ingame"

# displaying
title @a subtitle {"text":"Good luck and have fun!"}
title @a title {text:"GO!",color:"green",bold:true}
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

# reset temp stats
function uhc:storage/destroy/temp_stats
function uhc:storage/create/temp_stats

# set gamemode
gamemode survival @a[scores={uhc.ingame.player_role=0}]

# set gamerules
gamerule spawn_mobs true
gamerule spawn_monsters true
gamerule mob_drops true
gamerule tnt_explodes true
gamerule mob_griefing true
gamerule allow_entering_nether_using_portals true
gamerule fall_damage true
gamerule fire_damage true
gamerule freeze_damage true
gamerule drowning_damage true

# set timestamp
# pvp 10m
# b shrink 20m
# b stop 45m
# dm 50m
scoreboard players set $pvp_on uhc.ingame.timestamp 600
scoreboard players set $border_shrink uhc.ingame.timestamp 1200
scoreboard players set $border_stop uhc.ingame.timestamp 2700
scoreboard players set $deathmatch uhc.ingame.timestamp 3000

# add tag gliding
tag @a[scores={uhc.ingame.player_role=0}] add uhc.gliding

# start stopwatch
stopwatch create uhc:ingame.game_time