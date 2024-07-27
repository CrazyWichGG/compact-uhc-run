#commands
execute as @a at @s run spawnpoint @s ~ ~ ~
execute as @a at @s if score @s death matches 1 run function system:player-dead
setworldspawn ~ ~2 ~
execute as @a at @s run effect give @s night_vision infinite 0 true
execute if score lobby game-state matches 1 as @a[gamemode=survival] at @s run gamemode adventure @s

#functions
function system:disable-pvp
function system:disable-nether
function system:timer
function system:timer-end
function system:border
function system:gliding
function system:jump-pad
function system:total-player
#function system:slowball
#function system:haystack
function system:gain-emerald
function system:border-countdown
function system:border-bossbar-name
function system:border-size
function system:shop
function system:item-glowing
function system:lobby-player-inborder
function system:border-bossbar-score-sync
function system:game-time
function system:game-time-event
function system:player-join-late
function system:bossbar-animation
function system:ingame-early-invin
function system:gen-chunk
function system:spectator-spectate-player