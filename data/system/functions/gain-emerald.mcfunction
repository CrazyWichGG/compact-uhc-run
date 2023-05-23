#mob kill
execute as @a at @s if score @s entity-kills matches 1 run give @s minecraft:emerald 2
execute as @a at @s if score @s entity-kills matches 1 run title @s actionbar [{"text":"+2 Emerald","color":"green"},{"text":" (Killed Mob)","color":"gray"}]
execute as @a at @s if score @s entity-kills matches 1 run scoreboard players set @s entity-kills 0

#player kill
execute as @a at @s if score @s player-kills matches 1 run give @s minecraft:emerald 18
execute as @a at @s if score @s player-kills matches 1 run title @s actionbar [{"text":"+20 Emeralds","color":"green"},{"text":" (Killed Player)","color":"gray"}]
execute as @a at @s if score @s player-kills matches 1 run scoreboard players set @s player-kills 0

#mined iron
execute as @a at @s if score @s mined-ore-iron matches 1 run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-iron matches 1 run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Iron Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-iron matches 1 run scoreboard players set @s mined-ore-iron 0

#mined gold
execute as @a at @s if score @s mined-ore-gold matches 1 run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-gold matches 1 run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Gold Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-gold matches 1 run scoreboard players set @s mined-ore-gold 0

#mined deepslate iron
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1 run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1 run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Deepslate Iron Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1 run scoreboard players set @s mined-ore-deepslate-iron 0

#mined deepslate gold
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1 run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1 run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Deepslate Gold Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1 run scoreboard players set @s mined-ore-deepslate-gold 0