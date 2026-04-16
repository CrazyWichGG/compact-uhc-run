# set state to ingame
data modify storage uhc:game state set value "ingame"

# dismount player
execute as @a[scores={uhc.ingame.player_role=0}] at @s run kill @n[type=armor_stand,nbt={data:{spawn_platform:1b}},distance=..3]

# displaying
title @a subtitle {"text":"Good luck and have fun!"}
title @a title {text:"FIGHT",color:"green",bold:true}
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

# set gamemode
gamemode survival @a[scores={uhc.ingame.player_role=0}]

# set gamerules
gamerule spawn_mobs true
gamerule spawn_monsters true
gamerule mob_drops true
gamerule tnt_explodes true
gamerule mob_griefing true
gamerule allow_entering_nether_using_portals true
gamerule fall_damage true
gamerule fire_damage true
gamerule freeze_damage true
gamerule drowning_damage true