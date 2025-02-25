#GEN CHUNK

#running tick
execute if score gen-chunk game-state matches 1 run scoreboard players add tick preload-game 1

#timer
execute if score tick preload-game matches 20 run scoreboard players add second preload-game 1
execute if score tick preload-game matches 20 run scoreboard players set tick preload-game 0

execute if score second preload-game matches 60 run scoreboard players add minute preload-game 1
execute if score second preload-game matches 60 run scoreboard players set second preload-game 0

#check if chunk is generated for each player
# multiple chunks
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s run scoreboard players set @s is-chunk-generated 0
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~ ~ ~ run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~16 ~ ~ run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-16 ~ ~ run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~ ~ ~16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~ ~ ~-16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~16 ~ ~16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-16 ~ ~16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~16 ~ ~-16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-16 ~ ~-16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~32 ~ ~ run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-32 ~ ~ run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~ ~ ~32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~ ~ ~-32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~32 ~ ~32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-32 ~ ~32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~32 ~ ~-32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-32 ~ ~-32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~32 ~ ~16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-32 ~ ~16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~32 ~ ~-16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-32 ~ ~-16 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~16 ~ ~32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-16 ~ ~32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~16 ~ ~-32 run scoreboard players add @s is-chunk-generated 1
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if loaded ~-16 ~ ~-32 run scoreboard players add @s is-chunk-generated 1

#total player
execute if score gen-chunk game-state matches 1 run scoreboard players set player-total preload-game 0
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s run scoreboard players add player-total preload-game 1

#total player generated
execute if score gen-chunk game-state matches 1 run scoreboard players set player-generated preload-game 0
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run scoreboard players add player-generated preload-game 1

#title
execute if score gen-chunk game-state matches 1 run title @a actionbar [{"text":"Ready Players ","color":"yellow"},{"text":"(","color":"yellow"},{"score":{"name":"player-generated","objective":"preload-game"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"player-total","objective":"preload-game"},"color":"yellow"},{"text":")","color":"yellow"}]

execute if score gen-chunk game-state matches 1 as @a[team=spectator] at @s run title @s subtitle [{"text":"Waiting for players...","color":"yellow"}]
execute if score gen-chunk game-state matches 1 as @a[team=spectator] at @s run title @s title [{"text":""}]

execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 0..24 run title @s subtitle [{"text":"Generating Chunks...","color":"yellow"}]
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 0..24 run title @s title [{"score":{"name":"@s","objective":"is-chunk-generated"},"color":"yellow"},{"text":"/","color":"yellow"},{"text":"25","color":"yellow"}]

execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run title @s subtitle [{"text":"Waiting for other players...","color":"white"}]
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run title @s title [{"text":"Ready!","color":"green"}]

#bossbar name
execute if score gen-chunk game-state matches 1 if score minute preload-game matches 0 run bossbar set minecraft:gen-chunk name [{"text":"Waiting for chunks to generate... ","color":"white"},{"text":"(","color":"gray"},{"score":{"name":"second","objective":"preload-game"},"color":"gray"},{"text":"s)","color":"gray"}]
execute if score gen-chunk game-state matches 1 if score minute preload-game matches 1.. run bossbar set minecraft:gen-chunk name [{"text":"Waiting for chunks to generate... ","color":"white"},{"text":"(","color":"gray"},{"score":{"name":"minute","objective":"preload-game"},"color":"gray"},{"text":"m ","color":"gray"},{"score":{"name":"second","objective":"preload-game"},"color":"gray"},{"text":"s)","color":"gray"}]

#ride armor stand when chunk is generating
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s run ride @s mount @e[type=armor_stand,name='preload-game',limit=1,sort=nearest]
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s unless entity @s on vehicle run tp @s @e[type=armor_stand,name='preload-game',limit=1,sort=nearest]

#end
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run gamerule spectatorsGenerateChunks true
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run title @a times 0 100 20

execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game if score minute preload-game matches 0 run tellraw @a [{"text":"Successfully generated all required chunks in ","color":"green"},{"score":{"name":"second","objective":"preload-game"},"color":"green"},{"text":"s","color":"green"}]
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game if score minute preload-game matches 1.. run tellraw @a [{"text":"Successfully generated all required chunks in ","color":"green"},{"score":{"name":"minute","objective":"preload-game"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"preload-game"},"color":"green"},{"text":"s","color":"green"}]

execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run function system:game-start

execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run scoreboard players set lobby game-state 0
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run scoreboard players set load-asset game-state 0
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run scoreboard players set ingame game-state 1
execute if score gen-chunk game-state matches 1 if score player-generated preload-game matches 1.. if score player-generated preload-game = player-total preload-game run scoreboard players set gen-chunk game-state 0