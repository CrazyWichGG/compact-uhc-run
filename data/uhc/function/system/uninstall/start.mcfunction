tellraw @s {"text":"Uninstalling the game...","color":"green"}
execute as @n[type=marker,nbt={data:{lobby_center:1b}}] at @s run function uhc:system/uninstall/run
kill @e[type=marker,nbt={data:{lobby_center:1b}}]
tellraw @s {"text":"Uninstallation complete!","color":"green"}