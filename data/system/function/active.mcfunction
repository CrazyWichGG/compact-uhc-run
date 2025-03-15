# commands
# -set world spawn
setworldspawn ~ ~2 ~
# -set spawnpoint at player
execute as @a at @s run spawnpoint @s ~ ~ ~
# -death event
execute as @a[team=ingame] at @s if score ingame game-state matches 1 if score @s ingame-death matches 1 run function system:ingame-player-dead
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
function system:total-player
function system:disable-pvp
function system:disable-nether
function system:timer
function system:border
function system:gliding
function system:jump-pad
function system:obtain-emerald
function system:border-countdown
function system:border-bossbar-name
function system:border-size
function system:shop
function system:item-glowing
function system:lobby-player-inborder
function system:border-bossbar-score-sync
function system:game-time
function system:game-time-event
function system:player-rejoin
function system:player-join-late
function system:bossbar-animation
function system:ingame-early-invin

#preload game
function system:preload-game/generate-chunk
function system:preload-game/load-asset

#inventory controller
function system:inventory_controller/lobby_main
function system:inventory_controller/ingame

#cosmetics
function system:cosmetics/set_default_value
function system:cosmetics/projectile_trails
function system:cosmetics/gliding_effects
function system:cosmetics/kill_effects

#settings
function system:settings/set_default_value
function system:settings/active

function system:spectator-spectate-player
function system:statistics-handler
function system:server-status
function system:entities-timeout
function system:supply-drop
function system:enderchest
function system:end-game-check
function system:end-game-tick-slow

## custom
# -gambling
function system:custom-active/gambling
# -gun
function system:custom-active/gun/sniper
function system:custom-active/gun/active
# -old-combat
function system:custom-active/old-combat
