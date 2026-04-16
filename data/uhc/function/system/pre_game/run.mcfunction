# update bossbar
execute store result score $load_time uhc.pre_game run stopwatch query uhc:pre_game.load_time
execute if score $step uhc.pre_game matches 1 run bossbar set uhc:pre_game.loading_process name [{text:"Waiting for chunks to generate... "},{text:"(",color:"gray"},{score:{name:"$load_time",objective:"uhc.pre_game"},color:"gray"},{text:"s)",color:"gray"}]

# step process
execute if score $step uhc.pre_game matches 1 run function uhc:system/pre_game/chunk_gen
execute if score $step uhc.pre_game matches 2 run function uhc:system/pre_game/countdown

# lock player with armorstand (solo)
execute if data storage uhc:game {gamemode:"solo"} as @a[scores={uhc.ingame.player_role=0}] at @s run ride @s mount @n[type=armor_stand,nbt={data:{spawn_platform:1b}},distance=..3]