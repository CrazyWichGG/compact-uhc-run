#kill effect animation
execute as @e[type=armor_stand,tag=cosmetics.kill_effects] at @s run scoreboard players add @s cosmetics.kill_effects.playing 1
# -head rocket
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 1.. run tp @s ~ ~.25 ~ ~20 ~
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 1.. run particle firework ~ ~1.4 ~ 0 0 0 0 1 force @a
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 1.. run playsound entity.chicken.egg master @a ~ ~1.4 ~ 1 1
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 30.. run particle block{block_state:redstone_block} ~ ~1.4 ~ 0 0 0 1 100 force @a
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 30.. run particle explosion_emitter ~ ~1.4 ~ 0 0 0 0 1 force @a
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 30.. run playsound entity.generic.explode master @a ~ ~1.4 ~ 1 1
execute as @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket] at @s if score @s cosmetics.kill_effects.playing matches 30.. run kill @s
#kill effect item handler
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_kill_effect:1b}}}}] run data modify entity @s PickupDelay set value 32767
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_kill_effect:1b}}},OnGround:1b}] run kill @s
