# villager ui (wandering trader) (current)
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{special-item:shop-menu}}}] run scoreboard players add @s hold-shop 1
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:nether_star",tag:{special-item:shop-menu}}}] run scoreboard players set @s hold-shop 0

execute as @a at @s if score @s hold-shop matches 1 run summon minecraft:wandering_trader ~ ~-2 ~ {Invulnerable:1b,CanPickUpLoot:0b,NoAI:1b,Silent:1b,DespawnDelay:-1,Offers:{Recipes:[{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:4},sell:{id:"golden_apple",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:2},sell:{id:"iron_ingot",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:8},buyB:{id:"copper_ingot",Count:4},sell:{id:"diamond",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:8},buyB:{id:"redstone",Count:8},sell:{id:nether_wart,Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:16},buyB:{id:"redstone",Count:48},sell:{id:"blaze_rod",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:16},buyB:{id:"gold_ingot",Count:32},sell:{id:"glowstone_dust",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:16},sell:{id:"slime_block",Count:1,tag:{display:{Name:'[{"text":"Jump Pad","italic":false,"color":"yellow"},{"text":" (Place)","color":"gray"}]',Lore:['[{"text":"Place on the ground and step on","italic":false,"color":"white"}]','[{"text":"to fly up and glide down.","italic":false,"color":"white"}]']}}}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:1},sell:{id:"arrow",Count:2}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:1},buyB:{id:"copper_ingot",Count:1},sell:{id:"spectral_arrow",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:16},buyB:{id:"copper_ingot",Count:16},sell:{id:"ender_pearl",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:64},buyB:{id:"copper_ingot",Count:64},sell:{id:"totem_of_undying",Count:1}}]},active_effects:[{id:"invisibility",duration:999999,amplifier:0,show_particles:0b},{id:"resistance",duration:999999,amplifier:0,show_particles:0b}]}
execute as @a at @s if score @s hold-shop matches 1 run team add shop-entity
execute as @a at @s if score @s hold-shop matches 1 run team modify shop-entity collisionRule never
execute as @a at @s if score @s hold-shop matches 1 run team join shop-entity @e[type=minecraft:wandering_trader,limit=1,distance=..2]

execute as @a at @s if score @s hold-shop matches 0 run tp @e[type=minecraft:wandering_trader,limit=1,distance=..2] ~ -256 ~
execute as @a at @s if score @s hold-shop matches 0 run effect clear @s[team=ingame] weakness

execute as @a at @s if score @s hold-shop > default hold-shop run tp @e[type=minecraft:wandering_trader,limit=1,distance=..2] ~ ~ ~
execute as @a at @s if score @s hold-shop > default hold-shop run effect give @s[team=ingame] minecraft:weakness 11 255 true
execute as @a at @s if score @s hold-shop > default hold-shop run title @s actionbar [{"text":"Stand still to use ","color":"white"},{"text":"Shop Menu","color":"yellow"},{"text":". Attacking is ","color":"white"},{"text":"disabled","color":"red"},{"text":" while the Shop Menu is available!","color":"white"}]

# chest ui (experimental)
# execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{special-item:shop-menu}}}] run scoreboard players add @s hold-shop 1
# execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:nether_star",tag:{special-item:shop-menu}}}] run scoreboard players set @s hold-shop 0

# execute as @a at @s if score @s hold-shop matches 1 run summon minecraft:chest_minecart ~ ~1 ~ {CustomName:'{"text":"Shop Menu","color":"yellow","bold":true}',CustomNameVisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["shop-entity"],DisplayState:}
# execute as @a at @s if score @s hold-shop matches 1 run team add shop-entity
# execute as @a at @s if score @s hold-shop matches 1 run team modify shop-entity collisionRule never
# execute as @a at @s if score @s hold-shop matches 1 run team join shop-entity @e[type=minecraft:chest_minecart,limit=1,distance=..2]

# execute as @a at @s if score @s hold-shop matches 0 run tp @e[type=minecraft:chest_minecart,limit=1,distance=..3] ~ -256 ~
# execute as @a at @s if score @s hold-shop matches 0 run effect clear @s[team=ingame] weakness

# execute as @a at @s if score @s hold-shop > default hold-shop run tp @e[type=minecraft:chest_minecart,limit=1,distance=..3] ~ ~1 ~
# execute as @a at @s if score @s hold-shop > default hold-shop run effect give @s[team=ingame] minecraft:weakness 11 255 true
# execute as @a at @s if score @s hold-shop > default hold-shop run title @s actionbar [{"text":"Stand still to use ","color":"white"},{"text":"Shop Menu","color":"yellow"},{"text":". Attacking is ","color":"white"},{"text":"disabled","color":"red"},{"text":" while the Shop Menu is available!","color":"white"}]

# # chest ui items
# execute as @a at @s run data modify entity @e[type=chest_minecart,tag=shop-entity,limit=1,sort=nearest] Items append value {Slot:0b,id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Golden Apple","color":"yellow","bold":true}'},HideFlags:63}}