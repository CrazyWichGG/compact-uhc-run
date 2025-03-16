#blood
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run particle minecraft:block{block_state:redstone_block} ~ ~.8 ~ .25 .75 .25 1 1000 force @a 
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 1 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 .75
#snow
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run particle minecraft:item{item:snowball} ~ ~.8 ~ .25 .75 .25 .4 1000 force @a
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 2 run playsound minecraft:block.snow.break master @a ~ ~ ~ 1 1
#pinata
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 3 run loot spawn ~ ~2 ~ loot system:cosmetics/kill_effects/pinata
#ash
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run particle minecraft:smoke ~ ~.8 ~ .25 .75 .25 .5 1000 force @a
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run particle minecraft:white_smoke ~ ~.8 ~ .25 .75 .25 .5 100 force
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 4 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1
#head rocket
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["cosmetics.kill_effects","cosmetics.kill_effects.head_rocket"]}
execute as @s at @s on attacker if score @s cosmetics.kill_effects matches 5 as @a[team=spectator,scores={ingame-death=1},sort=nearest] run loot replace entity @e[type=armor_stand,tag=cosmetics.kill_effects.head_rocket,sort=nearest,limit=1] armor.head loot system:cosmetics/kill_effects/head

