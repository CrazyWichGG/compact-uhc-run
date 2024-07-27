#set game state
scoreboard players set lobby game-state 0
scoreboard players set gen-chunk game-state 0
scoreboard players set ingame game-state 1

#tellraw
tellraw @a [{"text":"The game has started! Have fun ;)","color":"green"}]

#border
function border:state-1

#invincible effect
function system:ingame-early-invin-start

#game time
scoreboard players set tick game-time 0
scoreboard players set second game-time 0
scoreboard players set minute game-time 0

#bossbar
bossbar set minecraft:main players @a
bossbar set minecraft:main visible false
bossbar set minecraft:ingame players @a
bossbar set minecraft:ingame visible true
bossbar set minecraft:invincibility players @a
bossbar set minecraft:invincibility visible true
bossbar set minecraft:gen-chunk players @a
bossbar set minecraft:gen-chunk visible false

#kill armor stand
execute as @a[team=ingame] at @s run kill @e[type=armor_stand,name='gen-chunk']

#dismount armor stand
execute as @a[team=ingame] at @s run ride @s dismount

#gamemode
gamemode survival @a[team=ingame]

#gamerules
gamerule doMobSpawning true

#clear xp
xp set @a[team=ingame] 0 levels
xp set @a[team=ingame] 0 points

#give item
clear @a[team=ingame]
item replace entity @a[team=ingame] hotbar.0 with stone_axe 1
item replace entity @a[team=ingame] hotbar.1 with stone_pickaxe 1
item replace entity @a[team=ingame] hotbar.2 with stone_shovel 1
item replace entity @a[team=ingame] hotbar.8 with nether_star{special-item:shop-menu,display:{Name:'[{"text":"Shop Menu ","italic":false,"color":"yellow"},{"text":"(Right Click)","color":"gray"}]',Lore:['[{"text":"Collect ","italic":false,"color":"white"},{"text":"emeralds","color":"green"},{"text":" by killing mobs","color":"white"}]','[{"text":"or mining ores and using ","italic":false,"color":"white"},{"text":"Shop Menu ","color":"yellow"}]','[{"text":"to buy items!","italic":false,"color":"white"}]','[{"text":"DO NOT THROW AWAY!","italic":false,"color":"red","bold":true}]']}} 1

#title
title @a times 0 100 20
title @a[team=ingame] title {"text":"UHC Run","color":"green","bold": true}
title @a[team=ingame] subtitle {"text":"Good luck and have fun!","color":"white"}

#play sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

#gliding
tag @a[team=ingame] add gliding

#settings
# -stop loading music
#stopsound @a master music_disc.stal