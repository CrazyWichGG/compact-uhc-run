#set gen-chunk scoreboard
scoreboard players set tick preload-game 0
scoreboard players set second preload-game 0
scoreboard players set minute preload-game 0
scoreboard players set player-generated preload-game 0

#set bossbar
bossbar set minecraft:gen-chunk players @a
bossbar set minecraft:gen-chunk visible true
bossbar set minecraft:gen-chunk name "Teleporting..."
bossbar set minecraft:main players @a
bossbar set minecraft:main visible false

#tellraw
tellraw @a [{"text":"Waiting for chunks to generate and game to load assets before game start... ","color":"yellow"}]

#title
title @a subtitle [{"text":"Teleporting...","color":"yellow"}]
title @a title [{"text":""}]

#spread players
spreadplayers ~ ~ 150 700 false @a[team=ingame]

#worlborder
worldborder set 1500

#tp up
execute as @a[team=ingame] at @s run tp @s ~ ~200 ~

#summon armor stand for riding
execute as @a[team=ingame] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,CustomName:'{"text":"preload-game"}',Rotation:[0f,270f]}

#ride armor stand
execute as @a[team=ingame] at @s run ride @s mount @e[type=armor_stand,name='preload-game',limit=1,sort=nearest]

#gamerule
gamerule spectatorsGenerateChunks false

#gamemode
gamemode adventure @a

#set title times
title @a times 0 32767 0

#reset load asset stage
scoreboard players set load-asset-stage preload-game -1

#set game state
scoreboard players set gen-chunk game-state 1