#LOAD ASSET

#total player
execute if score load-asset game-state matches 1 run scoreboard players set player-total preload-game 0
execute if score load-asset game-state matches 1 as @a[team=ingame] at @s run scoreboard players add player-total preload-game 1

#total player rode armorstand
execute if score load-asset game-state matches 1 run scoreboard players set player-rode-armorstand preload-game 0
execute if score load-asset game-state matches 1 as @a[team=ingame] at @s if score @s is-player-rode-armorstand matches 1 run scoreboard players add player-rode-armorstand preload-game 1

#player behavior
execute if score load-asset game-state matches 1 run gamerule spectatorsGenerateChunks false
execute if score load-asset game-state matches 1 as @e[type=armor_stand,name='preload-game'] at @s on passengers run scoreboard players set @s[team=ingame] is-player-rode-armorstand 1
execute if score load-asset game-state matches 1 as @a[team=ingame] at @s if score @s is-player-rode-armorstand matches 1 run gamemode spectator @s

#load asset
execute if score load-asset game-state matches 1 run scoreboard players set loaded-asset preload-game 0
execute if score load-asset game-state matches 1 run scoreboard players set required-asset preload-game 15

execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game if score load-asset-stage preload-game matches 0 run function event:supply-drop/summon-supply-drop-phase1
execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game if score load-asset-stage preload-game matches 1 run function event:supply-drop/summon-supply-drop-phase2
execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game if score load-asset-stage preload-game matches 2 run function event:supply-drop/summon-supply-drop-phase3
execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game if score load-asset-stage preload-game matches 3 run function event:supply-drop/summon-supply-drop-phase4
execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game if score load-asset-stage preload-game matches 4 run function event:supply-drop/summon-supply-drop-phase5

execute if score load-asset game-state matches 1 if score player-rode-armorstand preload-game = player-total preload-game as @e[type=armor_stand,name='map-center',limit=1] at @s as @e[type=armor_stand,tag=supply-drop,team=supply-state-load] at @s if loaded ~ ~ ~ run scoreboard players add loaded-asset preload-game 1

#title
execute if score load-asset game-state matches 1 if score loaded-asset preload-game matches 0.. run title @a subtitle [{"text":"Loading Supply Drop phase 1...","color":"yellow"}]
execute if score load-asset game-state matches 1 if score loaded-asset preload-game matches 3.. run title @a subtitle [{"text":"Loading Supply Drop phase 2...","color":"yellow"}]
execute if score load-asset game-state matches 1 if score loaded-asset preload-game matches 6.. run title @a subtitle [{"text":"Loading Supply Drop phase 3...","color":"yellow"}]
execute if score load-asset game-state matches 1 if score loaded-asset preload-game matches 9.. run title @a subtitle [{"text":"Loading Supply Drop phase 4...","color":"yellow"}]
execute if score load-asset game-state matches 1 if score loaded-asset preload-game matches 12.. run title @a subtitle [{"text":"Loading Supply Drop phase 5...","color":"yellow"}]

execute if score load-asset game-state matches 1 run title @a title [{"score":{"name":"loaded-asset","objective":"preload-game"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"required-asset","objective":"preload-game"},"color":"yellow"}]

#bossbar name
execute if score load-asset game-state matches 1 if score minute preload-game matches 0 run bossbar set minecraft:gen-chunk name [{"text":"Loading required assets... ","color":"white"}]
execute if score load-asset game-state matches 1 if score minute preload-game matches 1.. run bossbar set minecraft:gen-chunk name [{"text":"Loading required assets... ","color":"white"}]


#ride armor stand and teleport when loading asset
execute if score load-asset game-state matches 1 as @a[team=ingame] at @s run ride @s mount @e[type=armor_stand,name='preload-game',limit=1,sort=nearest]
execute if score load-asset game-state matches 1 as @a[team=ingame] at @s unless entity @s on vehicle run tp @s @e[type=armor_stand,name='preload-game',limit=1,sort=nearest]


#end
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game run gamemode survival @a[team=ingame]
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game as @e[type=armor_stand,tag=supply-drop,team=supply-state-load] run team join supply-state-prepare
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game run scoreboard players set lobby game-state 0
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game run scoreboard players set ingame game-state 0
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game run scoreboard players set gen-chunk game-state 1
execute if score load-asset game-state matches 1 if score loaded-asset preload-game = required-asset preload-game run scoreboard players set load-asset game-state 0

