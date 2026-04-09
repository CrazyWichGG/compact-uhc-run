# tick function


# item click event


# item management
## clear items
clear @a[gamemode=!creative] *[!custom_data~{uhc_item:true}]
## kill items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{uhc_item:true}}}}]


## hotbar
execute as @a[gamemode=!creative] run function uhc:system/lobby/inventory/hotbar

## inventory (gui)
execute as @a[gamemode=!creative] run function uhc:system/lobby/inventory/inventory

## armor
execute as @a[gamemode=!creative] run item replace entity @s armor.head with air
execute as @a[gamemode=!creative] run item replace entity @s armor.chest with air
execute as @a[gamemode=!creative] run item replace entity @s armor.legs with air
execute as @a[gamemode=!creative] run item replace entity @s armor.feet with air

## off hand
execute as @a[gamemode=!creative] run item replace entity @s weapon.offhand with air

## crafting grid
execute as @a[gamemode=!creative] run item replace entity @s player.crafting.0 with air
execute as @a[gamemode=!creative] run item replace entity @s player.crafting.1 with air
execute as @a[gamemode=!creative] run item replace entity @s player.crafting.2 with air
execute as @a[gamemode=!creative] run item replace entity @s player.crafting.3 with air

## cursor
execute as @a[gamemode=!creative] run item replace entity @s player.cursor with air