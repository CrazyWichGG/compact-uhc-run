#permission filter
execute as @s[tag=!setup-uninstall-request] at @s run tellraw @s {"text":"Unknown function uninstall:comfirm","color":"red"}
execute as @s[tag=setup-uninstall-request] at @s run tellraw @s {"text":"Preparing to remove..."}

#border reset
execute as @s[tag=setup-uninstall-request] at @s run worldborder set 59999968

#score remove
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove bossbar
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove death
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove health
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove kills
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove player
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove time
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove timer
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove total-death
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove player-kills
execute as @s[tag=setup-uninstall-request] at @s run scoreboard objectives remove entity-kills

#bossbar remove
execute as @s[tag=setup-uninstall-request] at @s run bossbar remove border
execute as @s[tag=setup-uninstall-request] at @s run bossbar remove main

#team remove
execute as @s[tag=setup-uninstall-request] at @s run team empty ingame
execute as @s[tag=setup-uninstall-request] at @s run team remove ingame

#gamemode
execute as @s[tag=setup-uninstall-request] at @s run gamemode survival @a
execute as @s[tag=setup-uninstall-request] at @s run defaultgamemode survival

#gamerule
execute as @s[tag=setup-uninstall-request] at @s run gamerule doImmediateRespawn false
execute as @s[tag=setup-uninstall-request] at @s run gamerule doWeatherCycle true
execute as @s[tag=setup-uninstall-request] at @s run gamerule doDaylightCycle true
execute as @s[tag=setup-uninstall-request] at @s run gamerule doMobSpawning true
execute as @s[tag=setup-uninstall-request] at @s run gamerule commandBlockOutput true
execute as @s[tag=setup-uninstall-request] at @s run gamerule keepInventory false
execute as @s[tag=setup-uninstall-request] at @s run gamerule doTraderSpawning true

#max health reset
execute as @s[tag=setup-uninstall-request] at @s run execute as @a at @s run attribute @s generic.max_health base set 20

#checking installation
execute as @s[tag=setup-uninstall-request] at @s run execute as @s at @s if entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s {"text":"Removing..."}
execute as @s[tag=setup-uninstall-request] at @s run execute as @s at @s unless entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s {"text":"Nothing to remove... Skip uninstallation"}

#remove armor stand center
execute as @s[tag=setup-uninstall-request] at @s run execute as @e[type=minecraft:armor_stand,name="map-center"] at @s run tp @a[tag=setup-uninstall-request] @s
execute as @s[tag=setup-uninstall-request] at @s run execute as @e[type=minecraft:armor_stand,name="map-center"] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace repeating_command_block
execute as @s[tag=setup-uninstall-request] at @s run kill @e[type=minecraft:armor_stand,name="map-center"]

#permission remove
execute as @s[tag=setup-uninstall-request] at @s run tellraw @s {"text":"\nUninstall complete","color":"green"}
execute as @s[tag=setup-uninstall-request] at @s run tag @s remove setup-uninstall-request