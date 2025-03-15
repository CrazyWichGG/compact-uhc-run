#blood
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run particle minecraft:block{block_state:redstone_block} ~ ~.8 ~ .25 .75 .25 1 1000 normal @a 
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75 0
#snow
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run particle minecraft:item{item:snowball} ~ ~.8 ~ .25 .75 .25 .5 1000 normal @a
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1 0