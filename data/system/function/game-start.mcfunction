#set game state
scoreboard players set lobby game-state 0
scoreboard players set gen-chunk game-state 0
scoreboard players set load-asset game-state 0
scoreboard players set ingame game-state 1

#tellraw
tellraw @a [{"text":"The game has started! Have fun ;)","color":"green"}]

#border
function game:stage-1

#invincible effect
function system:ingame-early-invin-start

#game time
scoreboard players set tick game-time 0
scoreboard players set second game-time 0
scoreboard players set minute game-time 0

#set game-time
scoreboard players set game-time time 0

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
loot replace entity @a[team=ingame] hotbar.8 loot system:custom_item/shop_menu

#title
title @a times 0 100 20
#title @a[team=ingame] subtitle {"text":"Good luck and have fun!","color":"white"} //moves to customs
#title @a[team=ingame] title {"text":"UHC Run","color":"green","bold": true} //moves to customs

#play sound
#execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1 //moves to customs

#gliding
tag @a[team=ingame] add gliding

#statistic
scoreboard players add @a[team=ingame] total-games-played 1

#customs
# -old combat
execute if score old-combat custom matches 1 as @a[team=ingame] at @s run loot replace entity @s weapon.offhand loot system:inventory_handler/old_combat_shield

# -night mode
execute if score night-mode custom matches 0 run title @a subtitle {"text":"Good luck and have fun!","color":"white"}
execute if score night-mode custom matches 0 run title @a title {"text":"UHC Run","color":"green","bold": true}
execute if score night-mode custom matches 0 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

execute if score night-mode custom matches 1 run title @a subtitle {"text":"Monsters can now spawn on ground!","color":"white"}
execute if score night-mode custom matches 1 run title @a title {"text":"Night Mode","color":"#9933ff"}
execute if score night-mode custom matches 1 as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1

# -gambling
execute if score gambling custom matches 1 run loot replace entity @a[team=ingame] hotbar.7 loot system:custom_item/gambling_slot_item