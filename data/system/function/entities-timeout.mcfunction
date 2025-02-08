#server entities optimization
#check if entities are not players or armor stands then count down their timeout
execute as @e[type=player] run tag @s add entities-timeout-exception
execute as @e[type=armor_stand] run tag @s add entities-timeout-exception
execute as @e[type=item_frame] run tag @s add entities-timeout-exception
execute as @e[type=glow_item_frame] run tag @s add entities-timeout-exception
execute as @e[type=block_display] run tag @s add entities-timeout-exception
execute as @e[type=shulker] run tag @s add entities-timeout-exception
execute as @e[type=#boat] run tag @s add entities-timeout-exception
execute as @e[type=horse] run tag @s add entities-timeout-exception
execute as @e[type=donkey] run tag @s add entities-timeout-exception
execute as @e[type=mule] run tag @s add entities-timeout-exception
execute as @e[type=minecart] run tag @s add entities-timeout-exception
execute as @e[type=camel] run tag @s add entities-timeout-exception
execute as @e[type=skeleton_horse] run tag @s add entities-timeout-exception
execute as @e[type=zombie_horse] run tag @s add entities-timeout-exception
execute as @e[type=llama] run tag @s add entities-timeout-exception
execute as @e[type=trader_llama] run tag @s add entities-timeout-exception
execute as @e[type=pig,nbt={Saddle:1b}] run tag @s add entities-timeout-exception
execute as @e[type=strider,nbt={Saddle:1b}] run tag @s add entities-timeout-exception
execute as @e[tag=!entities-timeout-exception] at @s run scoreboard players add @s entities-timeout 1

#actions to items
execute as @e[tag=!entities-timeout-exception,type=item] if score @s entities-timeout matches 1200.. run kill @s

#actions to other entities
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run tp @a[team=ingame,distance=..2] ~ ~ ~
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run tp @s ~ -300 ~
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run kill @s