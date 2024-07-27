#running tick
scoreboard players add tick gen-chunk 1


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
execute if score gen-chunk game-state matches 1 if score tick gen-chunk matches 20 run scoreboard players set player-total gen-chunk 0
execute if score gen-chunk game-state matches 1 if score tick gen-chunk matches 20 as @a[team=ingame] at @s run scoreboard players add player-total gen-chunk 1

#total player generated
execute if score gen-chunk game-state matches 1 if score tick gen-chunk matches 20 run scoreboard players set player-generated gen-chunk 0
execute if score gen-chunk game-state matches 1 if score tick gen-chunk matches 20 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run scoreboard players add player-generated gen-chunk 1

#title
execute if score gen-chunk game-state matches 1 run title @a actionbar [{"text":"Ready Players ","color":"yellow"},{"text":"(","color":"yellow"},{"score":{"name":"player-generated","objective":"gen-chunk"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"player-total","objective":"gen-chunk"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score gen-chunk game-state matches 1 as @a[team=spectator] at @s run title @s subtitle [{"text":"Waiting for players...","color":"yellow"}]
execute if score gen-chunk game-state matches 1 as @a[team=spectator] at @s run title @s title [{"text":""}]
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 0..24 run title @s subtitle [{"text":"Generating Chunks...","color":"yellow"}]
# multiple chunks
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 0..24 run title @s title [{"text":"(","color":"yellow"},{"score":{"name":"@s","objective":"is-chunk-generated"},"color":"yellow"},{"text":"/","color":"yellow"},{"text":"25)","color":"yellow"}]

execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run title @s subtitle [{"text":"Waiting for other players...","color":"white"}]
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s if score @s is-chunk-generated matches 25 run title @s title [{"text":"Ready!","color":"green"}]

#bossbar name
execute if score gen-chunk game-state matches 1 if score minute gen-chunk matches 0 run bossbar set minecraft:gen-chunk name [{"text":"Waiting for chunks to generate... ","color":"white"},{"text":"(","color":"gray"},{"score":{"name":"second","objective":"gen-chunk"},"color":"gray"},{"text":"s)","color":"gray"}]
execute if score gen-chunk game-state matches 1 if score minute gen-chunk matches 1.. run bossbar set minecraft:gen-chunk name [{"text":"Waiting for chunks to generate... ","color":"white"},{"text":"(","color":"gray"},{"score":{"name":"minute","objective":"gen-chunk"},"color":"gray"},{"text":"m ","color":"gray"},{"score":{"name":"second","objective":"gen-chunk"},"color":"gray"},{"text":"s)","color":"gray"}]

#ride armor stand when chunk is generating
execute if score gen-chunk game-state matches 1 as @a[team=ingame] at @s run ride @s mount @e[type=armor_stand,name='gen-chunk',limit=1,sort=nearest]

#timer
execute if score tick gen-chunk matches 20 run scoreboard players add second gen-chunk 1
execute if score tick gen-chunk matches 20 run scoreboard players set tick gen-chunk 0

execute if score second gen-chunk matches 60 run scoreboard players add minute gen-chunk 1
execute if score second gen-chunk matches 60 run scoreboard players set second gen-chunk 0

#end
execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk if score minute gen-chunk matches 0 run tellraw @a [{"text":"Successfully generated all required chunks in ","color":"green"},{"score":{"name":"second","objective":"gen-chunk"},"color":"green"},{"text":"s","color":"green"}]
execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk if score minute gen-chunk matches 1.. run tellraw @a [{"text":"Successfully generated all required chunks in ","color":"green"},{"score":{"name":"minute","objective":"gen-chunk"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"gen-chunk"},"color":"green"},{"text":"s","color":"green"}]

execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk run function system:game-start

execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk run scoreboard players set lobby game-state 0
execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk run scoreboard players set ingame game-state 1
execute if score gen-chunk game-state matches 1 if score player-generated gen-chunk matches 1.. if score player-generated gen-chunk = player-total gen-chunk run scoreboard players set gen-chunk game-state 0