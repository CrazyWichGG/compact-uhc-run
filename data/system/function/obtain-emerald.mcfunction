#mob kill
execute as @a at @s if score @s emerald-entity-kills matches 1.. run give @s minecraft:emerald 1
execute as @a at @s if score @s emerald-entity-kills matches 1.. run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Killed Mob)","color":"gray"}]
execute as @a at @s if score @s emerald-entity-kills matches 1.. run scoreboard players remove @s emerald-entity-kills 1

#player kill
execute as @a at @s if score @s emerald-player-kills matches 1.. run give @s minecraft:emerald 19
execute as @a at @s if score @s emerald-player-kills matches 1.. run title @s actionbar [{"text":"+20 Emeralds","color":"green"},{"text":" (Killed Player)","color":"gray"}]
execute as @a at @s if score @s emerald-player-kills matches 1.. run scoreboard players remove @s emerald-player-kills 1



#mined coal
execute as @a at @s if score @s mined-ore-coal matches 1.. run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-coal matches 1.. run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Coal Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-coal matches 1.. run scoreboard players remove @s mined-ore-coal 1

#mined deepslate coal
execute as @a at @s if score @s mined-ore-deepslate-coal matches 1.. run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-deepslate-coal matches 1.. run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Deepslate Coal Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-coal matches 1.. run scoreboard players remove @s mined-ore-deepslate-coal 1

#mined copper
execute as @a at @s if score @s mined-ore-copper matches 1.. run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-copper matches 1.. run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Copper Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-copper matches 1.. run scoreboard players remove @s mined-ore-copper 1

#mined deepslate copper
execute as @a at @s if score @s mined-ore-deepslate-copper matches 1.. run give @s minecraft:emerald 1
execute as @a at @s if score @s mined-ore-deepslate-copper matches 1.. run title @s actionbar [{"text":"+1 Emerald","color":"green"},{"text":" (Mined Deepslate Copper Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-copper matches 1.. run scoreboard players remove @s mined-ore-deepslate-copper 1

#mined iron
execute as @a at @s if score @s mined-ore-iron matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-iron matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Iron Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-iron matches 1.. run scoreboard players remove @s mined-ore-iron 1

#mined deepslate iron
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Deepslate Iron Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-iron matches 1.. run scoreboard players remove @s mined-ore-deepslate-iron 1

#mined lapis
execute as @a at @s if score @s mined-ore-lapis matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-lapis matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Lapis Lazuli Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-lapis matches 1.. run scoreboard players remove @s mined-ore-lapis 1

#mined deepslate lapis
execute as @a at @s if score @s mined-ore-deepslate-lapis matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-deepslate-lapis matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Deepslate Lapis Lazuli Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-lapis matches 1.. run scoreboard players remove @s mined-ore-deepslate-lapis 1

#mined redstone
execute as @a at @s if score @s mined-ore-redstone matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-redstone matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Redstone Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-redstone matches 1.. run scoreboard players remove @s mined-ore-redstone 1

#mined deepslate redstone
execute as @a at @s if score @s mined-ore-deepslate-redstone matches 1.. run give @s minecraft:emerald 2
execute as @a at @s if score @s mined-ore-deepslate-redstone matches 1.. run title @s actionbar [{"text":"+2 Emeralds","color":"green"},{"text":" (Mined Deepslate Redstone Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-redstone matches 1.. run scoreboard players remove @s mined-ore-deepslate-redstone 1

#mined gold
execute as @a at @s if score @s mined-ore-gold matches 1.. run give @s minecraft:emerald 3
execute as @a at @s if score @s mined-ore-gold matches 1.. run title @s actionbar [{"text":"+3 Emeralds","color":"green"},{"text":" (Mined Gold Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-gold matches 1.. run scoreboard players remove @s mined-ore-gold 1

#mined deepslate gold
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1.. run give @s minecraft:emerald 3
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1.. run title @s actionbar [{"text":"+3 Emeralds","color":"green"},{"text":" (Mined Deepslate Gold Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-gold matches 1.. run scoreboard players remove @s mined-ore-deepslate-gold 1

#mined diamond
execute as @a at @s if score @s mined-ore-diamond matches 1.. run give @s minecraft:emerald 5
execute as @a at @s if score @s mined-ore-diamond matches 1.. run title @s actionbar [{"text":"+5 Emeralds","color":"green"},{"text":" (Mined Diamond Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-diamond matches 1.. run scoreboard players remove @s mined-ore-diamond 1

#mined deepslate diamond
execute as @a at @s if score @s mined-ore-deepslate-diamond matches 1.. run give @s minecraft:emerald 5
execute as @a at @s if score @s mined-ore-deepslate-diamond matches 1.. run title @s actionbar [{"text":"+5 Emeralds","color":"green"},{"text":" (Mined Deepslate Diamond Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-diamond matches 1.. run scoreboard players remove @s mined-ore-deepslate-diamond 1

#mined emerald
execute as @a at @s if score @s mined-ore-emerald matches 1.. run give @s minecraft:emerald 5
execute as @a at @s if score @s mined-ore-emerald matches 1.. run title @s actionbar [{"text":"+5 Emeralds","color":"green"},{"text":" (Mined Emerald Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-emerald matches 1.. run scoreboard players remove @s mined-ore-emerald 1

#mined deepslate emerald
execute as @a at @s if score @s mined-ore-deepslate-emerald matches 1.. run give @s minecraft:emerald 5
execute as @a at @s if score @s mined-ore-deepslate-emerald matches 1.. run title @s actionbar [{"text":"+5 Emeralds","color":"green"},{"text":" (Mined Deepslate Emerald Ore)","color":"gray"}]
execute as @a at @s if score @s mined-ore-deepslate-emerald matches 1.. run scoreboard players remove @s mined-ore-deepslate-emerald 1

#mined raw copper block
execute as @a at @s if score @s mined-ore-raw-copper-block matches 1.. run give @s minecraft:emerald 3
execute as @a at @s if score @s mined-ore-raw-copper-block matches 1.. run title @s actionbar [{"text":"+3 Emeralds","color":"green"},{"text":" (Mined Raw Copper Block)","color":"gray"}]
execute as @a at @s if score @s mined-ore-raw-copper-block matches 1.. run scoreboard players remove @s mined-ore-raw-copper-block 1

#mined raw iron block
execute as @a at @s if score @s mined-ore-raw-iron-block matches 1.. run give @s minecraft:emerald 5
execute as @a at @s if score @s mined-ore-raw-iron-block matches 1.. run title @s actionbar [{"text":"+5 Emeralds","color":"green"},{"text":" (Mined Raw Iron Block)","color":"gray"}]
execute as @a at @s if score @s mined-ore-raw-iron-block matches 1.. run scoreboard players remove @s mined-ore-raw-iron-block 1

#mined raw gold block
execute as @a at @s if score @s mined-ore-raw-gold-block matches 1.. run give @s minecraft:emerald 8
execute as @a at @s if score @s mined-ore-raw-gold-block matches 1.. run title @s actionbar [{"text":"+8 Emeralds","color":"green"},{"text":" (Mined Raw Gold Block)","color":"gray"}]
execute as @a at @s if score @s mined-ore-raw-gold-block matches 1.. run scoreboard players remove @s mined-ore-raw-gold-block 1