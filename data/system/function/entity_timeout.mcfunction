#server entity optimization
#check if entity is included in timeout list
execute as @e[type=#system:entity_timeout_list] run tag @s remove entity_timeout_included
execute as @e[type=shulker,tag=!supply-drop-glowing] run tag @s add entity_timeout_included
execute as @e[type=#arrows,nbt=!{pickup:1b}] run tag @s add entity_timeout_included

#countdown if players is outside range, otherwise reset countdown
execute as @e[tag=entity_timeout_included] at @s unless entity @e[type=player,distance=..32] run scoreboard players add @s entities-timeout 1
execute as @e[tag=entity_timeout_included] at @s if entity @e[type=player,distance=..32] run scoreboard players reset @s entities-timeout

#when timeout reached
#item
execute as @e[tag=entity_timeout_included,type=item] if score @s entities-timeout matches 1200.. run kill @s

#other entity
execute as @e[tag=entity_timeout_included,type=!item] if score @s entities-timeout matches 1200.. run tp @a[team=spectator,distance=..2] ~ ~ ~
execute as @e[tag=entity_timeout_included,type=!item] if score @s entities-timeout matches 1200.. on passengers run ride @s[team=ingame] dismount
execute as @e[tag=entity_timeout_included,type=!item] if score @s entities-timeout matches 1200.. run tp @s ~ -300 ~
execute as @e[tag=entity_timeout_included,type=!item] if score @s entities-timeout matches 1200.. run kill @s