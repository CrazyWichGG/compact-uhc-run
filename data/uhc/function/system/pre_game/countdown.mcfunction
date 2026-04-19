# check if countdown finished
execute if score $countdown uhc.pre_game matches ..0 run return run function uhc:system/pre_game/set_new_step/step_finished

# effect
effect give @a[scores={uhc.ingame.player_role=0}] blindness infinite 0 true

# title times
title @a times 0 100 20
# countdown title
execute if score $countdown uhc.pre_game matches 200 run title @a title {"text":"➓","color":"yellow"}
execute if score $countdown uhc.pre_game matches 200 as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 180 run title @a title {"text":"➒","color":"yellow"}
execute if score $countdown uhc.pre_game matches 180 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 160 run title @a title {"text":"➑","color":"yellow"}
execute if score $countdown uhc.pre_game matches 160 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 140 run title @a title {"text":"➐","color":"yellow"}
execute if score $countdown uhc.pre_game matches 140 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 120 run title @a title {"text":"➏","color":"yellow"}
execute if score $countdown uhc.pre_game matches 120 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 100 run title @a title {"text":"➎","color":"red"}
execute if score $countdown uhc.pre_game matches 100 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 80 run title @a title {"text":"➍","color":"red"}
execute if score $countdown uhc.pre_game matches 80 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 60 run title @a title {"text":"➌","color":"red"}
execute if score $countdown uhc.pre_game matches 60 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 40 run title @a title {"text":"➋","color":"red"}
execute if score $countdown uhc.pre_game matches 40 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.pre_game matches 20 run title @a title {"text":"➊","color":"red"}
execute if score $countdown uhc.pre_game matches 20 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

# decrease timer
scoreboard players remove $countdown uhc.pre_game 1