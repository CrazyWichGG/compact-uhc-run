#commands
execute store result bossbar minecraft:border value run scoreboard players get border bossbar
scoreboard players remove border bossbar 1
execute as @a at @s run spawnpoint @s ~ ~ ~
execute as @a at @a if score @s death matches 1 run function system:player-dead
scoreboard players add game-time time 1
setworldspawn ~ ~2 ~

#functions
function system:disable-pvp
function system:disable-nether
function system:timer
function system:timer-end
function system:border
function system:gliding
function system:jump-pad
function system:player-ingame-left
function system:player-left
function system:slowball
function system:haystack
function system:gain-emerald
#function system:event unused
#function system:event-trader unused
function system:border-countdown
function system:border-bossbar-name
function system:border-size
function system:shop