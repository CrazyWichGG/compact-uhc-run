# step process
execute if score $step uhc.pre_game.step matches 0 run function uhc:system/pre_game/chunk_gen
execute if score $step uhc.pre_game.step matches 1 run function uhc:system/pre_game/countdown

# lock player with armorstand (solo)
execute if data storage uhc:game {gamemode:"solo"} as @a[scores={uhc.ingame.player.role=0}] at @s run ride @s mount @n[type=armor_stand,nbt={data:{spawn_platform:1b}},distance=..3]