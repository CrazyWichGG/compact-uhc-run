
#recipe controller
# -give
execute if score gun custom matches 1 run recipe give @a system:custom/gun/sniper
execute if score gun custom matches 1 run recipe give @a system:custom/gun/sniper_ammo
# -take
execute if score gun custom matches 0 run recipe take @a system:custom/gun/sniper
execute if score gun custom matches 0 run recipe take @a system:custom/gun/sniper_ammo

#crafted result item delete
# -sniper
clear @a *[custom_data={custom_item:recipe_result,recipe_result:sniper}]
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{custom_item:recipe_result,recipe_result:sniper}}}}] run kill @s


#set default accuracy for each weapon
execute as @a at @s unless items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] run scoreboard players set @s custom-gun-accuracy 1
execute as @a at @s if items entity @s weapon.mainhand spyglass[custom_data~{custom_item_group:"gun",custom_item:"sniper"}] run scoreboard players set @s custom-gun-accuracy 4

#detect if player is holding gun
execute as @a at @s unless items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] run scoreboard players set @s custom-gun-is-holding-gun 0
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-is-holding-gun matches 0..1 run scoreboard players add @s custom-gun-is-holding-gun 1

#detect if player is not holding gun
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] run scoreboard players set @s custom-gun-is-not-holding-gun 0
execute as @a at @s unless items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-is-not-holding-gun matches 0..1 run scoreboard players add @s custom-gun-is-not-holding-gun 1

#accuracy calculation for using spyglass
execute as @a at @s if score @s custom-gun-is-scoping matches 1 run scoreboard players remove @s custom-gun-accuracy 3
execute as @a at @s if score @s custom-gun-is-scoping matches 1 run scoreboard players set @s custom-gun-is-scoping 0

#accuracy calculation for each movement
# -decrease
execute as @a at @s if predicate system:is_sneaking run scoreboard players remove @s custom-gun-accuracy 1

# -increase
execute as @a at @s if predicate system:is_moving run scoreboard players add @s custom-gun-accuracy 1
execute as @a at @s if predicate system:is_sprinting run scoreboard players add @s custom-gun-accuracy 1
execute as @a at @s unless predicate system:is_on_ground run scoreboard players add @s custom-gun-accuracy 1
execute as @a at @s if predicate system:is_swimming run scoreboard players add @s custom-gun-accuracy 1
execute as @a at @s if predicate system:is_on_fire run scoreboard players add @s custom-gun-accuracy 1
execute as @a at @s if predicate system:is_flying run scoreboard players add @s custom-gun-accuracy 2

#display accuracy indicator
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches ..0 run title @s subtitle [{"text":".","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 1 run title @s subtitle [{"text":"--","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 2 run title @s subtitle [{"text":"- -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 3 run title @s subtitle [{"text":"-  -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 4 run title @s subtitle [{"text":"-   -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 5 run title @s subtitle [{"text":"-    -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 6 run title @s subtitle [{"text":"-     -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 7 run title @s subtitle [{"text":"-      -","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 8 run title @s subtitle [{"text":"(       )","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 9 run title @s subtitle [{"text":"(        )","color":"white"}]
# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-accuracy matches 10.. run title @s subtitle [{"text":"(         )","color":"white"}]

# execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] run title @s title ""
execute as @a at @s unless items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-is-not-holding-gun matches 1 run title @s clear
execute as @a at @s unless items entity @s weapon.mainhand *[custom_data~{custom_item_group:"gun"}] if score @s custom-gun-is-not-holding-gun matches 1 run title @s actionbar ""
