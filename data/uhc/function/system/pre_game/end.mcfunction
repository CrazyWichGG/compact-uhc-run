# code finishing set up and clear used assets in pre game

# dismount player
execute as @a[scores={uhc.ingame.player_role=0}] at @s run kill @n[type=armor_stand,nbt={data:{spawn_platform:1b}},distance=..3]

# run start script for game
function uhc:system/game/init