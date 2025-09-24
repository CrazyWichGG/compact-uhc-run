# commands
# -set world spawn
setworldspawn ~ ~2 ~
# -set spawnpoint at player
execute as @a at @s run spawnpoint @s ~ ~ ~
# -death event
execute as @a[team=ingame] at @s if score ingame game-state matches 1 if score @s ingame-death matches 1 run function system:ingame_player_dead
execute as @a[team=!ingame] at @s if score ingame game-state matches 1 if score @s ingame-death matches 1 run scoreboard players set @s ingame-death 0
execute as @a at @s unless score ingame game-state matches 1 if score @s ingame-death matches 1 run scoreboard players set @s ingame-death 0
# -apply night vision
execute as @a at @s run effect give @s night_vision infinite 0 true
# -reset gamemode in lobby
execute if score lobby game-state matches 1 as @a[gamemode=!creative,gamemode=!spectator] at @s run gamemode adventure @s
execute if score lobby game-state matches 1 as @a[team=spectator] at @s run gamemode adventure @s
execute if score lobby game-state matches 1 as @a[team=spectator] at @s run team leave @s
# -apply glowing on deathmatch
execute if score border-state border-countdown matches 5.. run effect give @a[team=ingame] glowing infinite 0 true
# -get player uuid
execute as @a at @s store result score @s player-uuid run data get entity @s UUID[1] 1

# functions
function system:total_player
function system:disable_pvp
function system:disable_nether
function system:timer
function system:gliding
function system:jump_pad
function system:obtain_emerald
function system:shop
function system:item_glowing
function system:lobby_player_inborder
function system:game_time
function system:game_time_event
function system:player_rejoin
function system:player_join_late
function system:bossbar_animation
function system:ingame_early_invin

#border
function system:border/run
function system:border/score_countdown
function system:border/stage_bossbar_name
function system:border/score_store_size
function system:border/bossbar_score_sync

#preload game
function system:preload_game/generate_chunk
function system:preload_game/load_asset

#inventory controller
function system:inventory_controller/lobby_main
function system:inventory_controller/ingame

#cosmetics
function system:cosmetics/set_default_value
function system:cosmetics/projectile_trails
function system:cosmetics/gliding_effects
function system:cosmetics/kill_effects
function system:cosmetics/victory_dances

#settings
function system:settings/set_default_value
function system:settings/active

function system:spectator_spectate_player
function system:statistics_handler
function system:server_status
function system:entity_timeout
function system:supply_drop
function system:enderchest
function system:end_game_check
function system:end_game_tick_slow

## custom
# -gambling
function system:custom/gambling
# -gun
function system:custom/gun/sniper
function system:custom/gun/active
# -old-combat
function system:custom/old_combat
