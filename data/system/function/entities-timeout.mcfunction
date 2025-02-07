#server entities optimization
#check if entities are not players or armor stands then count down their timeout
execute as @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:block_display,type=!minecraft:block_display,type=!minecraft:shulker] at @s run scoreboard players add @s entities-timeout 1

#actions to items
execute as @e[type=item] if score @s entities-timeout matches 1200.. run kill @s

#actions to other entities
execute as @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:block_display,type=!minecraft:shulker] if score @s entities-timeout matches 1200.. run tp @s ~ -300 ~
execute as @e[type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:block_display,type=!minecraft:shulker] if score @s entities-timeout matches 1200.. run kill @s