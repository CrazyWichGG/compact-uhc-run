# set constant value
scoreboard players set $chunk_required uhc.pre_game.chunk_gen_status 25

# total player
scoreboard players set $total_player uhc.pre_game.chunk_gen_status 0
execute as @a[scores={uhc.ingame.player_role=0}] run scoreboard players add $total_player uhc.pre_game.chunk_gen_status 1

# check ready
scoreboard players set $player_completed uhc.pre_game.chunk_gen_status 0
execute as @a if score @s uhc.pre_game.chunk_gen_status = $chunk_required uhc.pre_game.chunk_gen_status run scoreboard players add $player_completed uhc.pre_game.chunk_gen_status 1

# check generated chunks
scoreboard players set @a[scores={uhc.ingame.player_role=0}] uhc.pre_game.chunk_gen_status 0
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~ ~ ~ run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~16 ~ ~ run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-16 ~ ~ run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~ ~ ~16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~ ~ ~-16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~16 ~ ~16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-16 ~ ~16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~16 ~ ~-16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-16 ~ ~-16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~32 ~ ~ run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-32 ~ ~ run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~ ~ ~32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~ ~ ~-32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~32 ~ ~32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-32 ~ ~32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~32 ~ ~-32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-32 ~ ~-32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~32 ~ ~16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-32 ~ ~16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~32 ~ ~-16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-32 ~ ~-16 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~16 ~ ~32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-16 ~ ~32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~16 ~ ~-32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1
execute as @a[scores={uhc.ingame.player_role=0}] at @s if loaded ~-16 ~ ~-32 run scoreboard players add @s uhc.pre_game.chunk_gen_status 1

# check if all ready
execute if score $player_completed uhc.pre_game.chunk_gen_status = $total_player uhc.pre_game.chunk_gen_status run return run function uhc:system/pre_game/set_new_step/step_2

# displaying
# title
title @a times 0 100 20
## player incomplete
execute as @a[scores={uhc.ingame.player_role=0}] unless score @s uhc.pre_game.chunk_gen_status = $chunk_required uhc.pre_game.chunk_gen_status run title @s subtitle {text:"Generating Chunks...",color:"yellow"}
execute as @a[scores={uhc.ingame.player_role=0}] unless score @s uhc.pre_game.chunk_gen_status = $chunk_required uhc.pre_game.chunk_gen_status run title @s title [{score:{name:"@s",objective:"uhc.pre_game.chunk_gen_status"},color:"yellow"},{text:"/",color:"yellow"},{score:{name:"$chunk_required",objective:"uhc.pre_game.chunk_gen_status"},color:"yellow"}]
## player complete
execute as @a[scores={uhc.ingame.player_role=0}] if score @s uhc.pre_game.chunk_gen_status = $chunk_required uhc.pre_game.chunk_gen_status run title @s subtitle {text:"Waiting for other players...",color:"white"}
execute as @a[scores={uhc.ingame.player_role=0}] if score @s uhc.pre_game.chunk_gen_status = $chunk_required uhc.pre_game.chunk_gen_status run title @s title {text:"Completed!",color:"green"}

# actionbar
title @a actionbar [{text:"Completed Players: ",color:"yellow"},{text:"(",color:"yellow"},{score:{name:"$player_completed",objective:"uhc.pre_game.chunk_gen_status"},color:"yellow"},{text:"/",color:"yellow"},{score:{name:"$total_player",objective:"uhc.pre_game.chunk_gen_status"},color:"yellow"},{text:")",color:"yellow"}]