# code finishing set up and clear used assets in pre game
# set state to ingame
data modify storage uhc:game state set value "ingame"

# dismount player
execute as @a[scores={uhc.ingame.player_role=0}] at @s run kill @n[type=armor_stand,nbt={data:{spawn_platform:1b}},distance=..3]

# displaying
title @a subtitle {"text":"Good luck and have fun!"}
title @a title {text:"FIGHT",color:"green",bold:true}
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

# run start script for game
function uhc:system/game/start_script