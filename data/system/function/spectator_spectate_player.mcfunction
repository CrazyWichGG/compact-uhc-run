execute as @a[team=spectator,gamemode=spectator] at @s if entity @a[team=ingame,distance=0..1,limit=1] run scoreboard players add @s spectator-spectate-player 1
execute as @a[team=spectator,gamemode=spectator] at @s unless entity @a[team=ingame,distance=0..1,limit=1] run scoreboard players set @s spectator-spectate-player 0


#message
#execute as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1..60 run title @s actionbar [{"text":"Press ","color":"white"},{"text":"[","color":"green"},{"keybind":"key.sneak","color":"green"},{"text":"]","color":"green"},{"text":" to stop spectating and ","color":"white"},{"text":"[","color":"green"},{"keybind":"key.inventory","color":"green"},{"text":"]","color":"green"},{"text":" to view inventory","color":"white"}]
execute as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1.. run title @s actionbar [{"text":"You are now spectating ","color":"white"},{"selector":"@a[team=ingame,limit=1,sort=nearest]"},{"text":" [","color":"red"},{"score": {"name":"@a[team=ingame,limit=1,sort=nearest]","objective":"health"},"color":"red"},{"text":"♥]","color":"red"}]
execute as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 0 run title @s actionbar ""