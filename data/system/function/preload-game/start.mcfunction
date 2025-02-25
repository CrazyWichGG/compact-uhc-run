#set gen-chunk scoreboard
scoreboard players set tick preload-game 0
scoreboard players set second preload-game 0
scoreboard players set minute preload-game 0
scoreboard players set player-generated preload-game 0

#gamerule
gamerule spectatorsGenerateChunks false

#gamemode
gamemode spectator @a

#set title times
title @a times 0 32767 0

#load asset stage
scoreboard players set load-asset-stage preload-game 0

scoreboard players set load-asset game-state 1