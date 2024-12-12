tellraw @s {"text":"Checking..."}
execute if entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s [{"text":"Installation: "},{"text":"Found","color":"green"}]
execute unless entity @e[type=minecraft:armor_stand,name="map-center"] run tellraw @s [{"text":"Installation: "},{"text":"Not Found","color":"red"}]