tellraw @a {"text":"Installing the game...","color":"green"}
execute align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {data:{is_map_center:1b}}
execute as @e[type=marker,nbt={data:{is_map_center:1b}}] at @s run function uhc:install/run
tellraw @a {"text":"Installation complete!","color":"green"}