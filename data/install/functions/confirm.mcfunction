#permission filter 1
execute as @s[tag=setup-random-request] at @s run tellraw @s {"text":"Random location...","color":"green"}

#random location
execute as @s[tag=setup-random-request] at @s run spreadplayers ~ ~ 0 10000 false @s
execute as @s[tag=setup-random-request] at @s run tp @a @s

#setup process
execute as @s[tag=setup-random-request] at @s run tag @s add setup-request
#execute as @s[tag=setup-random-request] at @s run function setup:confirm

#permission filter 2
execute as @s[tag=!setup-request] at @s run tellraw @s {"text":"Unknown function install:confirm","color":"red"}
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"Starting setup map, this may take a few time.","color":"green"}
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"DO NOT MOVE!","color":"red"}

#armor stand center
execute as @s[tag=setup-request] at @a run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"map-center"}'}

#score time
execute as @s[tag=setup-request] at @a run scoreboard objectives add time dummy
execute as @s[tag=setup-request] at @s run scoreboard players set game-time time 30000
execute as @s[tag=setup-request] at @s run scoreboard players set border500 time 6000
execute as @s[tag=setup-request] at @s run scoreboard players set border500-done time 9600
execute as @s[tag=setup-request] at @s run scoreboard players set border200 time 13200
execute as @s[tag=setup-request] at @s run scoreboard players set border200-done time 15000
execute as @s[tag=setup-request] at @s run scoreboard players set border50 time 17400
execute as @s[tag=setup-request] at @s run scoreboard players set border50-done time 18600
execute as @s[tag=setup-request] at @s run scoreboard players set border20 time 19800
execute as @s[tag=setup-request] at @s run scoreboard players set border20-done time 20400
execute as @s[tag=setup-request] at @s run scoreboard players set border1 time 21600
execute as @s[tag=setup-request] at @s run scoreboard players set border1-done time 22200

#score bossbar
execute as @s[tag=setup-request] at @s run scoreboard objectives add bossbar dummy
execute as @s[tag=setup-request] at @s run scoreboard players set border bossbar 0

#score health
execute as @s[tag=setup-request] at @s run scoreboard objectives add health health {"text":"♥","color":"red"}
execute as @s[tag=setup-request] at @s run scoreboard objectives setdisplay belowName health

#score player-kills
execute as @s[tag=setup-request] at @s run scoreboard objectives add kills playerKillCount
execute as @s[tag=setup-request] at @s run scoreboard objectives setdisplay list kills
execute as @s[tag=setup-request] at @s run scoreboard players set @a kills 0

#score player-total-kills
execute as @s[tag=setup-request] at @s run scoreboard objectives add player-kills playerKillCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a player-kills 0

#score entity-total-kills
execute as @s[tag=setup-request] at @s run scoreboard objectives add entity-kills totalKillCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a entity-kills 0

#score death
execute as @s[tag=setup-request] at @s run scoreboard objectives add death deathCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a death 0

#score total-death
execute as @s[tag=setup-request] at @s run scoreboard objectives add total-death deathCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a total-death 0

#score timer
execute as @s[tag=setup-request] at @s run scoreboard objectives add timer dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick timer 0
execute as @s[tag=setup-request] at @s run scoreboard players set second timer 20
execute as @s[tag=setup-request] at @s run scoreboard players set before-end timer 0
execute as @s[tag=setup-request] at @s run scoreboard players set before-end-time timer 400

#score player
execute as @s[tag=setup-request] at @s run scoreboard objectives add player dummy
execute as @s[tag=setup-request] at @s run scoreboard players set ingame player 0
execute as @s[tag=setup-request] at @s run scoreboard players set player-left player 0
execute as @s[tag=setup-request] at @s run scoreboard players set can-start player 2

#team ingame
execute as @s[tag=setup-request] at @s run team add ingame
execute as @s[tag=setup-request] at @s run team modify ingame color red

#bossbar main
execute as @s[tag=setup-request] at @s run bossbar add main {"text":"Ultimate UHC","color":"white","bold":true}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main color green
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main max 100
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main value 100
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main visible true
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main players @a

#bossbar border
execute as @s[tag=setup-request] at @s run bossbar add border {"text":"World Border"}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:border color green
execute as @s[tag=setup-request] at @s run bossbar set minecraft:border max 6000
execute as @s[tag=setup-request] at @s run bossbar set minecraft:border value 6000
execute as @s[tag=setup-request] at @s run bossbar set minecraft:border visible false
execute as @s[tag=setup-request] at @s run bossbar set minecraft:border style notched_10

#worldborder
execute as @s[tag=setup-request] at @s run worldborder center ~ ~
execute as @s[tag=setup-request] at @s run worldborder set 1000
execute as @s[tag=setup-request] at @s run worldborder damage buffer 0
execute as @s[tag=setup-request] at @s run worldborder damage amount 1

#gamemode 2
execute as @s[tag=setup-request] at @s run gamemode adventure @a
execute as @s[tag=setup-request] at @s run defaultgamemode adventure

#gamerule
execute as @s[tag=setup-request] at @s run gamerule doImmediateRespawn true
execute as @s[tag=setup-request] at @s run gamerule doWeatherCycle false
execute as @s[tag=setup-request] at @s run gamerule doDaylightCycle false
execute as @s[tag=setup-request] at @s run gamerule doMobSpawning true
execute as @s[tag=setup-request] at @s run gamerule commandBlockOutput false
execute as @s[tag=setup-request] at @s run gamerule sendCommandFeedback false
execute as @s[tag=setup-request] at @s run gamerule keepInventory false
execute as @s[tag=setup-request] at @s run gamerule doTraderSpawning false
execute as @s[tag=setup-request] at @s run gamerule announceAdvancements false

#time set
execute as @s[tag=setup-request] at @s run time set day

#difficulty set
execute as @s[tag=setup-request] at @s run difficulty normal

#world spawn
execute as @s[tag=setup-request] at @s run setworldspawn ~ ~ ~

#setblock command_block with function run
execute as @s[tag=setup-request] at @s run setblock ~ ~-2 ~ repeating_command_block{Command:"function system:run",auto:true}

#permission remove
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"\nSetup complete","color":"green"}
execute as @s[tag=setup-request] at @s run tag @s remove setup-random-request
execute as @s[tag=setup-request] at @s run tag @s remove setup-request