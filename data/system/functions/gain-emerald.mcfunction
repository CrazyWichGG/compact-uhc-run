#mob kill
execute as @a at @s if score @s entity-kills matches 1 run give @s minecraft:emerald 2
execute as @a at @s if score @s entity-kills matches 1 run title @s actionbar [{"text":"+2 Emerald","color":"green"},{"text":" (Kill Mob)","color":"gray"}]
execute as @a at @s if score @s entity-kills matches 1 run scoreboard players set @s entity-kills 0

#player kill
execute as @a at @s if score @s player-kills matches 1 run give @s minecraft:emerald 18
execute as @a at @s if score @s player-kills matches 1 run title @s actionbar [{"text":"+20 Emeralds","color":"green"},{"text":" (Kill Player)","color":"gray"}]
execute as @a at @s if score @s player-kills matches 1 run scoreboard players set @s player-kills 0