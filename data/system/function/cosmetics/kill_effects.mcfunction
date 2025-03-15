#kill effect item handler
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_kill_effect:1b}}}}] run data modify entity @s PickupDelay set value 32767
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_kill_effect:1b}}},OnGround:1b}] run kill @s

