tellraw @a {"text":"Installing the game...","color":"green"}
execute align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {data:{lobby_center:1b}}
execute as @n[type=marker,nbt={data:{lobby_center:1b}}] at @s run function uhc:system/install/run
tellraw @a {"text":"Installation complete!","color":"green"}