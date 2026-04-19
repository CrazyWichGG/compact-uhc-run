# installation process

# storage data
## default value
data merge storage uhc:game {is_installed:true,state:"lobby",gamemode:"solo",global_config:{},ingame:{participated_teams:[]}}


# lobby environment

## setworldspawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
## worldborder
worldborder center ~ ~
worldborder set 51
## time
time set day
## weather
weather clear

# player behavior
tp @a @s
gamemode adventure @a


# scoreboards

## interaction item
scoreboard objectives add uhc.interaction.written_book used:written_book

## lobby
function uhc:storage/create/lobby

## pre game
function uhc:storage/create/pre_game

## in game
function uhc:storage/create/ingame

## post game
function uhc:storage/create/post_game


## statistics
### temporary statistics
function uhc:storage/create/temp_stats

### total
scoreboard objectives add uhc.stats.total_deaths dummy
scoreboard objectives add uhc.stats.total_player_kills dummy
scoreboard objectives add uhc.stats.total_wins dummy
scoreboard objectives add uhc.stats.total_games_played dummy
scoreboard objectives add uhc.stats.total_damage_dealt dummy

### ingame
#### personal
scoreboard objectives add uhc.stats.ingame.player_kills dummy
scoreboard objectives add uhc.stats.ingame.damage_dealt dummy
#### team
scoreboard objectives add uhc.stats.ingame.team_kills.aqua dummy
scoreboard objectives add uhc.stats.ingame.team_kills.blue dummy
scoreboard objectives add uhc.stats.ingame.team_kills.cyan dummy
scoreboard objectives add uhc.stats.ingame.team_kills.gray dummy
scoreboard objectives add uhc.stats.ingame.team_kills.green dummy
scoreboard objectives add uhc.stats.ingame.team_kills.purple dummy
scoreboard objectives add uhc.stats.ingame.team_kills.orange dummy
scoreboard objectives add uhc.stats.ingame.team_kills.lime dummy
scoreboard objectives add uhc.stats.ingame.team_kills.pink dummy
scoreboard objectives add uhc.stats.ingame.team_kills.red dummy
scoreboard objectives add uhc.stats.ingame.team_kills.yellow dummy

## players' info
scoreboard objectives add uhc.player_info.health health
scoreboard objectives add uhc.player_info.armor armor
scoreboard objectives add uhc.player_info.food food
scoreboard objectives add uhc.player_info.air air



## scoreboard display
function uhc:display/scoreboard/create/lobby
function uhc:display/scoreboard/create/team
function uhc:display/scoreboard/create/team


# teams
function uhc:display/team/create/lobby
function uhc:display/team/create/ingame


# bossbar
function uhc:display/bossbar/create


# gamerules (static settings)
## environment
gamerule advance_time false
gamerule advance_weather false
gamerule spawn_phantoms false
gamerule spawn_patrols false
gamerule spawn_wandering_traders false
gamerule spawn_wardens false
gamerule global_sound_events false
gamerule send_command_feedback false
gamerule command_block_output false

## gameplay
gamerule keep_inventory true
gamerule immediate_respawn true
gamerule limited_crafting true
gamerule players_sleeping_percentage 101

# gamerules (dynamic settings)
## via game process
gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule mob_drops false
gamerule tnt_explodes false
gamerule mob_griefing false
gamerule allow_entering_nether_using_portals false
gamerule pvp false
gamerule fall_damage false
gamerule fire_damage false
gamerule freeze_damage false
gamerule drowning_damage false

## via game config
gamerule natural_health_regeneration false
gamerule show_advancement_messages false
gamerule locator_bar false
gamerule reduced_debug_info false
gamerule spectators_generate_chunks false

# trigger schedule
function uhc:system/schedule