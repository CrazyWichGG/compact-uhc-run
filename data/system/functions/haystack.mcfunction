#item detector
execute as @e[type=item,name="Hay Bale"] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-1 ~ minecraft:grass_block unless block ~ ~-1 ~ minecraft:tall_grass run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,CustomName:'{"text":"haystack"}'}

#position detector
execute as @e[type=armor_stand,name="haystack"] at @s run function system:generate-haystack