# countdown title
execute if score $countdown uhc.lobby.start_countdown matches 400 run title @a subtitle {"text":"20","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 400 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 400 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 200 run title @a subtitle {"text":"10","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 200 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 200 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 180 run title @a subtitle {"text":"9","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 180 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 180 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 160 run title @a subtitle {"text":"8","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 160 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 160 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 140 run title @a subtitle {"text":"7","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 140 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 140 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 120 run title @a subtitle {"text":"6","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 120 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 120 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 100 run title @a subtitle {"text":"5","color":"red"}
execute if score $countdown uhc.lobby.start_countdown matches 100 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 100 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 80 run title @a subtitle {"text":"4","color":"red"}
execute if score $countdown uhc.lobby.start_countdown matches 80 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 80 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 60 run title @a subtitle {"text":"3","color":"red"}
execute if score $countdown uhc.lobby.start_countdown matches 60 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 60 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 40 run title @a subtitle {"text":"2","color":"red"}
execute if score $countdown uhc.lobby.start_countdown matches 40 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 40 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 20 run title @a subtitle {"text":"1","color":"red"}
execute if score $countdown uhc.lobby.start_countdown matches 20 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 20 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score $countdown uhc.lobby.start_countdown matches 0 run title @a subtitle {"text":"Teleporting...","color":"yellow"}
execute if score $countdown uhc.lobby.start_countdown matches 0 run title @a title ""
execute if score $countdown uhc.lobby.start_countdown matches 0 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
