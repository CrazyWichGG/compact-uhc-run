# tick function

# clear items
clear @a[gamemode=!creative] *[!custom_data~{uhc_item:true}]

# kill items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{uhc_item:true}}}}]


# hotbar
execute as @a[gamemode=!creative] run function uhc:system/lobby/inventory/hotbar
