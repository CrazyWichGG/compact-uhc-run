# set state to lobby
data modify storage uhc:game state set value "lobby"

# reset all storage
function uhc:storage/destroy/all
function uhc:storage/create/all

# remove stopwatch
stopwatch remove uhc:post_game.duration

# leave team
team leave @a

# remove dead tag
tag @a remove uhc.dead

# tp all to lobby
execute as @n[type=marker,nbt={data:{lobby_center:1b}}] at @s run tp @a @s

# set border
worldborder set 51

# kill map center marker
kill @e[type=marker,nbt={data:{map_center:1b}}]

# bossbar
bossbar set uhc:lobby.ready_status visible true