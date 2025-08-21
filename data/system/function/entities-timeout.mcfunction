#server entities optimization
#check if entities are not players or armor stands then count down their timeout
execute as @e[type=player] run tag @s add entities-timeout-exception
execute as @e[type=marker] run tag @s add entities-timeout-exception
execute as @e[type=armor_stand] run tag @s add entities-timeout-exception
execute as @e[type=block_display] run tag @s add entities-timeout-exception
execute as @e[type=item_display] run tag @s add entities-timeout-exception
execute as @e[type=text_display] run tag @s add entities-timeout-exception
execute as @e[type=interaction] run tag @s add entities-timeout-exception
execute as @e[type=area_effect_cloud] run tag @s add entities-timeout-exception
execute as @e[type=shulker,tag=supply-drop-glowing] run tag @s add entities-timeout-exception
execute as @e[type=item_frame] run tag @s add entities-timeout-exception
execute as @e[type=glow_item_frame] run tag @s add entities-timeout-exception
execute as @e[type=#boat] run tag @s add entities-timeout-exception
execute as @e[type=oak_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=spruce_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=acacia_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=birch_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=dark_oak_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=jungle_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=pale_oak_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=bamboo_chest_raft] run tag @s add entities-timeout-exception
execute as @e[type=cherry_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=mangrove_chest_boat] run tag @s add entities-timeout-exception
execute as @e[type=horse] run tag @s add entities-timeout-exception
execute as @e[type=donkey] run tag @s add entities-timeout-exception
execute as @e[type=mule] run tag @s add entities-timeout-exception
execute as @e[type=minecart] run tag @s add entities-timeout-exception
execute as @e[type=chest_minecart] run tag @s add entities-timeout-exception
execute as @e[type=furnace_minecart] run tag @s add entities-timeout-exception
execute as @e[type=tnt_minecart] run tag @s add entities-timeout-exception
execute as @e[type=hopper_minecart] run tag @s add entities-timeout-exception
execute as @e[type=camel] run tag @s add entities-timeout-exception
execute as @e[type=skeleton_horse] run tag @s add entities-timeout-exception
execute as @e[type=zombie_horse] run tag @s add entities-timeout-exception
execute as @e[type=llama] run tag @s add entities-timeout-exception
execute as @e[type=trader_llama] run tag @s add entities-timeout-exception
execute as @e[type=wandering_trader] run tag @s add entities-timeout-exception
execute as @e[type=pig,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] run tag @s add entities-timeout-exception
execute as @e[type=strider,nbt={equipment:{saddle:{id:"minecraft:saddle"}}}] run tag @s add entities-timeout-exception
execute as @e[tag=!entities-timeout-exception] at @s run scoreboard players add @s entities-timeout 1

#actions to items
execute as @e[tag=!entities-timeout-exception,type=item] if score @s entities-timeout matches 1200.. run kill @s

#actions to other entities
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run tp @a[team=spectator,distance=..2] ~ ~ ~
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. on passengers run ride @s[team=ingame] dismount
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run tp @s ~ -300 ~
execute as @e[tag=!entities-timeout-exception,type=!item] if score @s entities-timeout matches 1200.. run kill @s