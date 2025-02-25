#add teams when sever restart
team add supply-state-load
team add supply-state-prepare
team add supply-state-ready
team add supply-state-landing
team add supply-state-landed
team add supply-glowing-green
team modify supply-glowing-green color green
team add supply-glowing-yellow
team modify supply-glowing-yellow color yellow
team add supply-glowing-red
team modify supply-glowing-red color red 
team add supply-glowing-light-purple
team modify supply-glowing-light-purple color light_purple
team add supply-glowing-aqua
team modify supply-glowing-aqua color aqua
#(this is for the server that delete empty team when restart)

#supply coordinates
execute as @e[type=minecraft:armor_stand,tag=supply-drop] store result score @s supply-coordinates-x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:armor_stand,tag=supply-drop] store result score @s supply-coordinates-y run data get entity @s Pos[1] 1
execute as @e[type=minecraft:armor_stand,tag=supply-drop] store result score @s supply-coordinates-z run data get entity @s Pos[2] 1

#deploy supply drop on time
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-prepare] if score @s supply-queue = game-time time run team join supply-state-ready @s

#set up ready supply
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-ready] at @s run scoreboard players reset @s supply-queue
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-ready] at @s run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"barrel",Properties:{facing:"up"}},NoGravity:1b,CustomName:'{"text":"supply-display"}'}
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-ready] at @s run team join supply-state-landing @s

#ready supply landing
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landing] at @s run tp @s ~ ~-.1 ~
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landing] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.2 5 force @a
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landing] at @s run tp @e[type=minecraft:block_display,name="supply-display",limit=1,distance=..2,sort=nearest] ~-.5 ~ ~-.5
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landing] at @s run scoreboard players add @s supply-state-landing 1

#on ground always active
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landing] at @s unless block ~ ~-.1 ~ air run team join supply-state-landed @s
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s run scoreboard players add @s supply-state-landed 1
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.2 1 force @a
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s run data modify entity @e[type=minecraft:shulker,tag=early-supply-glowing,limit=1,sort=nearest] Glowing set value true

execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-landed] at @s if block ~ ~ ~ barrel{LootTable:"system:supply_drop/early"} run team join supply-glowing-green @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-landed] at @s unless block ~ ~ ~ barrel{LootTable:"system:supply_drop/early"} run team join supply-glowing-yellow @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]

execute as @e[type=minecraft:armor_stand,tag=mid-supply-drop,team=supply-state-landed] at @s if block ~ ~ ~ barrel{LootTable:"system:supply_drop/mid"} run team join supply-glowing-aqua @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=mid-supply-drop,team=supply-state-landed] at @s unless block ~ ~ ~ barrel{LootTable:"system:supply_drop/mid"} run team join supply-glowing-yellow @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]

execute as @e[type=minecraft:armor_stand,tag=epic-supply-drop,team=supply-state-landed] at @s if block ~ ~ ~ barrel{LootTable:"system:supply_drop/epic"} run team join supply-glowing-light-purple @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=epic-supply-drop,team=supply-state-landed] at @s unless block ~ ~ ~ barrel{LootTable:"system:supply_drop/epic"} run team join supply-glowing-yellow @e[type=minecraft:shulker,tag=supply-drop-glowing,limit=1,sort=nearest]

#on ground once landed
execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"system:supply_drop/early",CustomName:'{"text":"Early Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy
execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run tellraw @a [{"text":"Early Supply","color":"green"},{"text":" has landed at ","color":"white"},{"text":"X: "},{"score":{"name":"@s","objective":"supply-coordinates-x"},"color":"yellow"},{"text":", Y: "},{"score":{"name":"@s","objective":"supply-coordinates-y"},"color":"yellow"},{"text":", Z: "},{"score":{"name":"@s","objective":"supply-coordinates-z"},"color":"yellow"}]

execute as @e[type=minecraft:armor_stand,tag=mid-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"system:supply_drop/mid",CustomName:'{"text":"Mid-Game Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy
execute as @e[type=minecraft:armor_stand,tag=mid-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run tellraw @a [{"text":"Mid-Game Supply","color":"aqua"},{"text":" has landed at ","color":"white"},{"text":"X: "},{"score":{"name":"@s","objective":"supply-coordinates-x"},"color":"yellow"},{"text":", Y: "},{"score":{"name":"@s","objective":"supply-coordinates-y"},"color":"yellow"},{"text":", Z: "},{"score":{"name":"@s","objective":"supply-coordinates-z"},"color":"yellow"}]

execute as @e[type=minecraft:armor_stand,tag=epic-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"system:supply_drop/epic",CustomName:'{"text":"Epic Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy
execute as @e[type=minecraft:armor_stand,tag=epic-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run tellraw @a [{"text":"Epic Supply","color":"light_purple"},{"text":" has landed at ","color":"white"},{"text":"X: "},{"score":{"name":"@s","objective":"supply-coordinates-x"},"color":"yellow"},{"text":", Y: "},{"score":{"name":"@s","objective":"supply-coordinates-y"},"color":"yellow"},{"text":", Z: "},{"score":{"name":"@s","objective":"supply-coordinates-z"},"color":"yellow"}]

execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run kill @e[type=minecraft:block_display,name="supply-display",limit=1,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run summon minecraft:shulker ~ ~ ~ {Tags:["supply-drop-glowing"],Glowing:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b,Silent:1b,PersistenceRequired:1b,active_effects:[{id:invisibility,duration:-1,show_particles:0b}]}
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1 1 1
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 1 run forceload remove ~ ~

# -once destroyed
execute as @e[type=minecraft:armor_stand,tag=supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 2.. unless block ~ ~ ~ minecraft:barrel run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]

execute as @e[type=minecraft:armor_stand,tag=early-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 2.. unless block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"Early Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy
execute as @e[type=minecraft:armor_stand,tag=mid-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 2.. unless block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"Mid-Game Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy
execute as @e[type=minecraft:armor_stand,tag=epic-supply-drop,team=supply-state-landed] at @s if score @s supply-state-landed matches 2.. unless block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"Epic Supply Drop"}',components:{"minecraft:custom_data":{special-item:supply-barrel}}} destroy

