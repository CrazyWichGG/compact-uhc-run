execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:nether_portal run tellraw @s {"text":"Going to nether is not available.","color":"red"}
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ minecraft:nether_portal run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:nether_portal
execute in minecraft:the_nether as @a[x=0] run function system:in_nether