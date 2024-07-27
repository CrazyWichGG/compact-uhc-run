execute as @a[team=spectator,gamemode=spectator] at @s if entity @a[team=ingame,distance=0] run scoreboard players add @s spectator-spectate-player 1
execute as @a[team=spectator,gamemode=spectator] at @s unless entity @a[team=ingame,distance=0] run scoreboard players set @s spectator-spectate-player 0


#message
execute as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 1..60 run title @s actionbar [{"text":"Press ","color":"white"},{"text":"[","color":"green"},{"keybind":"key.sneak","color":"green"},{"text":"]","color":"green"},{"text":" to stop spectating","color":"white"}]
execute as @a[team=spectator,gamemode=spectator] at @s if score @s spectator-spectate-player matches 60.. run title @s actionbar [{"text":"You are now spectating ","color":"white"},{"selector":"@a[team=ingame,distance=0,limit=1]"},{"text":" [","color":"red"},{"score": {"name":"@a[team=ingame,distance=0,limit=1]","objective":"health"},"color":"red"},{"text":"♥]","color":"red"}]