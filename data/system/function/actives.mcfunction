#commands
execute as @a at @s run spawnpoint @s ~ ~ ~
execute as @a[team=ingame] at @s if score @s ingame-death matches 1 run function system:ingame-player-dead
execute as @a[team=!ingame] at @s if score @s ingame-death matches 1 run scoreboard players set @s ingame-death 0
setworldspawn ~ ~2 ~
execute as @a at @s run effect give @s night_vision infinite 0 true
execute if score lobby game-state matches 1 as @a[gamemode=!creative] at @s run gamemode adventure @s
execute if score border-state border-countdown matches 5.. run effect give @a[team=ingame] glowing infinite 0 true

execute as @a[team=ingame] at @s run particle minecraft:dust{color:[1f,0f,0f],scale:1} ~ ~ ~ 0 0 0 0.2 5 force @a[team=spectator]

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
function system:player-join-late
function system:bossbar-animation
function system:ingame-early-invin
function system:gen-chunk
function system:spectator-spectate-player
#function system:raycasting
function system:customs-actives
#function system:settings-default
function system:inventory-item-handler
function system:inventory-item-handler-action
function system:statistics-handler
function system:server-status
function system:entities-timeout