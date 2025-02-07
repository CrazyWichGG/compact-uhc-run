# villager ui (wandering trader) (current)
execute as @a[team=!spectator] if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{custom_item:shop_menu}}}}] run scoreboard players add @s hold-shop 1
execute as @a[team=!spectator] if entity @s[nbt=!{SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{custom_item:shop_menu}}}}] run scoreboard players set @s hold-shop 0

execute as @a[team=!spectator] at @s if score @s hold-shop matches 1 run summon minecraft:wandering_trader ~ ~-2 ~ {Invulnerable:1b,CanPickUpLoot:0b,NoAI:1b,Silent:1b,DespawnDelay:-1,Offers:{Recipes:[{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:4},sell:{id:"golden_apple",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:2},sell:{id:"iron_ingot",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:8},buyB:{id:"copper_ingot",count:4},sell:{id:"diamond",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:1},buyB:{id:"lapis_lazuli",count:2},sell:{id:"experience_bottle",count:4}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:16},buyB:{id:"gold_ingot",count:4},sell:{id:"brewing_stand",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:8},buyB:{id:"redstone",count:8},sell:{id:nether_wart,count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:16},buyB:{id:"redstone",count:48},sell:{id:"blaze_rod",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:16},buyB:{id:"gold_ingot",count:24},sell:{id:"glowstone_dust",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:2},sell:{id:"wind_charge",count:8}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:16},sell:{id:"slime_block",count:1,components:{custom_data:"{custom_item:jump_pad}",custom_name:'[{"text":"Jump Pad","italic":false,"color":"yellow"},{"text":" (Place)","color":"gray"}]',lore:['[{"text":"Place on the ground and step on","italic":false,"color":"white"}]','[{"text":"to be launched into the air!","italic":false,"color":"white"}]']}}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:1},sell:{id:"arrow",count:2}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:1},buyB:{id:"copper_ingot",count:1},sell:{id:"spectral_arrow",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:16},buyB:{id:"copper_ingot",count:16},sell:{id:"ender_pearl",count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",count:64},buyB:{id:"gold_ingot",count:32},sell:{id:"totem_of_undying",count:1}}]},active_effects:[{id:"invisibility",duration:-1,amplifier:0,show_particles:0b},{id:"resistance",duration:-1,amplifier:0,show_particles:0b}]}
execute as @a[team=!spectator] at @s if score @s hold-shop matches 1 run team add shop-entity
execute as @a[team=!spectator] at @s if score @s hold-shop matches 1 run team modify shop-entity collisionRule never
execute as @a[team=!spectator] at @s if score @s hold-shop matches 1 run team join shop-entity @e[type=minecraft:wandering_trader,limit=1,distance=..2]

execute as @a[team=!spectator] at @s if score @s hold-shop matches 0 run tp @e[type=minecraft:wandering_trader,limit=1,distance=..2] ~ -256 ~
execute as @a[team=!spectator] at @s if score @s hold-shop matches 0 run effect clear @s weakness

execute as @a[team=!spectator] at @s if score @s hold-shop matches 1.. unless entity @e[type=minecraft:wandering_trader,limit=1,distance=...2] run tp @e[type=minecraft:wandering_trader,limit=1,distance=..2] ~ ~ ~
execute as @a[team=!spectator] at @s if score @s hold-shop matches 1.. run effect give @s minecraft:weakness 11 255 true
execute as @a[team=!spectator] at @s if score @s hold-shop matches 1.. run title @s actionbar [{"text":"Stand still to use ","color":"white"},{"text":"Shop Menu","color":"yellow"},{"text":". Attacking is ","color":"white"},{"text":"disabled","color":"red"},{"text":" while the Shop Menu is available!","color":"white"}]

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