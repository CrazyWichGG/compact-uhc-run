# code related to the game phase
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
scoreboard players set $pvp_on uhc.ingame.timestamp 12000
scoreboard players set $border_stop uhc.ingame.timestamp 42000
scoreboard players set $deathmatch uhc.ingame.timestamp 54000

# add tag gliding
tag @a[scores={uhc.ingame.player_role=0}] add uhc.gliding

# start stopwatch
stopwatch create uhc:ingame.game_time