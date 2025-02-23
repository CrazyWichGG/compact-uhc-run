#set game state
scoreboard players set lobby game-state 0
scoreboard players set ingame game-state 0
scoreboard players set gen-chunk game-state 1

#team management
team add ingame
team modify ingame color red
team modify ingame seeFriendlyInvisibles false
team join ingame @a

team add spectator
team modify spectator color gray
#team modify spectator prefix {"text":"[S] ","color":"gray"}
team modify spectator seeFriendlyInvisibles true
team modify spectator collisionRule never

#worlborder
worldborder set 1500

#set bossbar
bossbar set minecraft:gen-chunk players @a
bossbar set minecraft:gen-chunk visible true
bossbar set minecraft:gen-chunk name "Teleporting..."
bossbar set minecraft:main players @a
bossbar set minecraft:main visible false

#set gen-chunk scoreboard
scoreboard players set tick gen-chunk 0
scoreboard players set second gen-chunk 0
scoreboard players set minute gen-chunk 0
scoreboard players set player-generated gen-chunk 0

scoreboard players set @a gen-chunk 0

#player scoreboard
scoreboard players set game-time time 0
scoreboard players set @a ingame-player-kills 0
scoreboard objectives setdisplay list health

#max health
execute as @a at @s run attribute @s minecraft:max_health base set 40

#clear inventory
clear @a[team=ingame]

#clear xp
xp set @a[team=ingame] 0 levels
xp set @a[team=ingame] 0 points

#title
title @a times 0 100 20

#recipe
recipe give @a *

#weather clear
weather clear

#tellraw
tellraw @a [{"text":"Waiting for chunks to generate before game start... ","color":"yellow"}]

#summon supply drop
function event:supply-drop/summon-supply-drop

#spread players
spreadplayers ~ ~ 150 700 false @a[team=ingame]

#tp up
execute as @a[team=ingame] at @s run tp @s ~ ~200 ~

#summon armor stand for riding
execute as @a[team=ingame] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"gen-chunk"}'}

#ride armor stand
execute as @a[team=ingame] at @s run ride @s mount @e[type=armor_stand,name='gen-chunk',limit=1,sort=nearest]

#customs
# -night mode
execute if score night-mode custom matches 0 run time set day
execute if score night-mode custom matches 1 run time set midnight

# -old combat
execute if score old-combat custom matches 0 as @a[team=ingame] at @s run attribute @s minecraft:attack_speed base set 4
execute if score old-combat custom matches 1 as @a[team=ingame] at @s run attribute @s minecraft:attack_speed base set 100

# -tiny
execute if score tiny custom matches 0 as @a[team=ingame] at @s run attribute @s minecraft:scale base set 1
execute if score tiny custom matches 1 as @a[team=ingame] at @s run attribute @s minecraft:scale base set 0.5