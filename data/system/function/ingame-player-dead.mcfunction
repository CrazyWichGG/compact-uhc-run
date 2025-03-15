#scoreboard
scoreboard players set @s ingame-death 0

#team create
team add spectator
team modify spectator color gray
team modify spectator seeFriendlyInvisibles true
team modify spectator collisionRule never

#team management
team leave @s
team join spectator @s

#gamemode spectator
gamemode spectator @s

#clear glowing
effect clear @s glowing

#title
title @s[team=spectator] subtitle {"text":"You are now a spectator"}
title @s[team=spectator] title {"text":"YOU DIED!","color":"red"}

#clear gliding
tag @s remove gliding

#tellraw
tellraw @s[team=spectator] [{"text":"You are dead!","color":"red"},{"text":" You can still watch other players as a spectator.","color":"gray"}]

#play sound
execute as @s at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1 0.1

#kill shop item
execute as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{custom_item:shop_menu}}}},distance=..10,limit=1]

#customs


#cosmetics
function system:cosmetics/kill_effects_trigger