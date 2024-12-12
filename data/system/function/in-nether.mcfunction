execute in minecraft:the_nether as @a[x=0] at @s run tellraw @a [{"selector":"@s"},{"text":" has died from dehydration","color":"white"}]
execute in minecraft:the_nether as @a[x=0] at @s run clear @s
execute in minecraft:the_nether as @a[x=0] at @s run function system:ingame-player-dead
execute in minecraft:the_nether as @a[x=0] at @s run tp @s @e[name="map-center",limit=1]