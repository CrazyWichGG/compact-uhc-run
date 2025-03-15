#set game state
scoreboard players set ingame game-state 0
scoreboard players set gen-chunk game-state 0
scoreboard players set load-asset game-state 0
scoreboard players set end-game game-state 0
scoreboard players set lobby game-state 1

#tellraw
tellraw @a [{"text":"The game has ended. Teleporting players to the lobby...","color":"green"}]

#border
worldborder center ~ ~
worldborder set 51

#team
team empty ingame
team leave @a

#reset game-time
scoreboard players set game-time time 0

#reset scoreboard list/belowname
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name

#reset scoreboard
scoreboard players set ingame player 0
scoreboard players set end-timer timer 0

#tp all to lobby
tp @a ~ ~ ~

#clear effect
effect clear @a

#gamemode
gamemode adventure @a

#gamerules
gamerule doMobSpawning false

#reset k/d
scoreboard players set @a ingame-player-kills 0
scoreboard players set @a ingame-death 0

#bossbar
bossbar set minecraft:ingame players @a
bossbar set minecraft:ingame visible false
bossbar set minecraft:gen-chunk players @a
bossbar set minecraft:gen-chunk visible false
bossbar set minecraft:invincibility players @a
bossbar set minecraft:invincibility visible false
bossbar set minecraft:main players @a
bossbar set minecraft:main visible true

#kill all entities
kill @e[type=armor_stand,name='gen-chunk']
kill @e[type=item]
execute as @e[tag=!entities-timeout-exception] at @s run tp @s ~ -300 ~
kill @e[tag=!entities-timeout-exception]

#delete landing supply drop
execute as @e[type=armor_stand,tag=supply-drop,team=supply-state-landing] run kill @e[type=block_display,name="supply-display",limit=1]
execute as @e[type=armor_stand,tag=supply-drop,team=supply-state-landing] run kill @s
execute as @e[type=armor_stand,tag=supply-drop,team=supply-state-landed] run kill @e[type=shulker,tag=supply-drop-glowing,limit=1]
execute as @e[type=armor_stand,tag=supply-drop,team=supply-state-landed] run kill @s
kill @e[type=armor_stand,tag=supply-drop]
forceload remove all
team empty supply-state-load
team empty supply-state-prepare
team empty supply-state-ready
team empty supply-state-landing
team empty supply-state-landed

#clear inventory
clear @a

#reset xp
xp set @a 0 levels
xp set @a 0 points

#customs
# -night mode
time set day

# -tiny
execute if score tiny custom matches 0 as @a[team=ingame] at @s run attribute @s minecraft:scale base set 1
execute if score tiny custom matches 1 as @a[team=ingame] at @s run attribute @s minecraft:scale base set 0.5

#cosmetics cleanup
function system:cosmetics/victory_dances_cleanup
