#add nbt tag glowing to certain item
# -aqua
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] run team join glowing-color-aqua @s
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run team join glowing-color-aqua @s

# -black
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_helmet"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_helmet"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_leggings"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_leggings"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}] run team join glowing-color-black @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run team join glowing-color-black @s

# -gold
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] run team join glowing-color-gold @s

# -green
# execute as @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] run data modify entity @s Glowing set value true
# execute as @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] run team join glowing-color-green @s
# execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] run data modify entity @s Glowing set value true
# execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] run team join glowing-color-green @s

# -light_purple
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] run team join glowing-color-light_purple @s
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}] run team join glowing-color-light_purple @s
execute as @e[type=item,nbt={Item:{id:"minecraft:mace"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:mace"}}] run team join glowing-color-light_purple @s

# -red
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{special-item:shop-menu}}}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{special-item:shop-menu}}}}] run team join glowing-color-red @s

# -yellow
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run team join glowing-color-yellow @s
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run data modify entity @s Glowing set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run team join glowing-color-yellow @s

#add item glowing team
team add glowing-color-aqua
team add glowing-color-black
team add glowing-color-gold
team add glowing-color-green
team add glowing-color-light_purple
team add glowing-color-red
team add glowing-color-yellow

#modify item glowing team
team modify glowing-color-aqua color aqua
team modify glowing-color-black color black
team modify glowing-color-gold color gold
team modify glowing-color-green color green
team modify glowing-color-light_purple color light_purple
team modify glowing-color-red color red
team modify glowing-color-yellow color yellow