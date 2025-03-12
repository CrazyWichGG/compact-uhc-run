loot spawn ~ ~ ~ loot system:custom_item/gun/sniper
execute as @e[type=item,distance=..3,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{custom_item_group:gun,custom_item:sniper}}}}] run data modify entity @s PickupDelay set value 0
playsound block.anvil.use master @s ~ ~ ~ 1 1 1

advancement revoke @s only system:custom/gun/is_crafted_sniper