#set game state
scoreboard players set ingame game-state 0
scoreboard players set gen-chunk game-state 0
scoreboard players set lobby game-state 1

#tellraw
tellraw @a [{"text":"The game has ended. Teleporting players to the lobby...","color":"green"}]

#border
worldborder center ~ ~
worldborder set 51

#team
team empty ingame
team empty spectator

#reset game-time
scoreboard players set game-time time 0

#reset scoreboard list
scoreboard objectives setdisplay list

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
execute as @e[type=!player,type=!armor_stand] at @s run tp @s ~ -300 ~
kill @e[type=!player,type=!armor_stand]
kill @e[type=item]
kill @e[type=wandering_trader]

#clear inventory
clear @a

#reset xp
xp set @a 0 levels
xp set @a 0 points

#customs
# -night mode
time set day