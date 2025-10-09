tellraw @s {"text":"Uninstalling the game...","color":"green"}
execute as @e[type=marker,nbt={data:{is_map_center:1b}}] at @s run function uhc:system/uninstall/run
execute as @e[type=marker,nbt={data:{is_map_center:1b}}] at @s run kill @s
tellraw @s {"text":"Uninstallation complete!","color":"green"}