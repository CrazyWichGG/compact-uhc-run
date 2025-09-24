#for supply please see event:summon-supply-drop.mcfunction

# update game time when ingame
execute if score ingame game-state matches 1 run scoreboard players add game-time time 1

#pvp count down - stage 1
execute if score game-time time matches 6000 run title @a subtitle [{"text":"PvP enable in ","color":"white"},{"text":"5 minutes","color":"red"}]
execute if score game-time time matches 6000 run title @a title [{"text":""}]
execute if score game-time time matches 6000 run tellraw @a [{"text":"PvP will be enabled in ","color":"yellow"},{"text":"5 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 6000 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 10800 run title @a subtitle [{"text":"PvP enable in ","color":"white"},{"text":"1 minute","color":"red"}]
execute if score game-time time matches 10800 run title @a title [{"text":""}]
execute if score game-time time matches 10800 run tellraw @a [{"text":"PvP will be enabled in ","color":"yellow"},{"text":"1 minute","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 10800 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 11900 run title @a subtitle [{"text":"5","color":"yellow"}]
execute if score game-time time matches 11900 run title @a title [{"text":""}]
execute if score game-time time matches 11900 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 11920 run title @a subtitle [{"text":"4","color":"yellow"}]
execute if score game-time time matches 11920 run title @a title [{"text":""}]
execute if score game-time time matches 11920 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 11940 run title @a subtitle [{"text":"3","color":"red"}]
execute if score game-time time matches 11940 run title @a title [{"text":""}]
execute if score game-time time matches 11940 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 11960 run title @a subtitle [{"text":"2","color":"red"}]
execute if score game-time time matches 11960 run title @a title [{"text":""}]
execute if score game-time time matches 11960 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 11980 run title @a subtitle [{"text":"1","color":"red"}]
execute if score game-time time matches 11980 run title @a title [{"text":""}]
execute if score game-time time matches 11980 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1


#border shrink count down - stage 2
execute if score game-time time matches 18000 run title @a subtitle [{"text":"Border will shrink in ","color":"white"},{"text":"5 minutes","color":"red"}]
execute if score game-time time matches 18000 run title @a title [{"text":""}]
execute if score game-time time matches 18000 run tellraw @a [{"text":"Border will shrink in ","color":"yellow"},{"text":"5 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 18000 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 22800 run title @a subtitle [{"text":"Border will shrink in ","color":"white"},{"text":"1 minute","color":"red"}]
execute if score game-time time matches 22800 run title @a title [{"text":""}]
execute if score game-time time matches 22800 run tellraw @a [{"text":"Border will shrink in ","color":"yellow"},{"text":"1 minute","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 22800 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23800 run title @a subtitle [{"text":"10","color":"yellow"}]
execute if score game-time time matches 23800 run title @a title [{"text":""}]
execute if score game-time time matches 23800 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23820 run title @a subtitle [{"text":"9","color":"yellow"}]
execute if score game-time time matches 23820 run title @a title [{"text":""}]
execute if score game-time time matches 23820 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23840 run title @a subtitle [{"text":"8","color":"yellow"}]
execute if score game-time time matches 23840 run title @a title [{"text":""}]
execute if score game-time time matches 23840 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23860 run title @a subtitle [{"text":"7","color":"yellow"}]
execute if score game-time time matches 23860 run title @a title [{"text":""}]
execute if score game-time time matches 23860 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23880 run title @a subtitle [{"text":"6","color":"yellow"}]
execute if score game-time time matches 23880 run title @a title [{"text":""}]
execute if score game-time time matches 23880 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23900 run title @a subtitle [{"text":"5","color":"yellow"}]
execute if score game-time time matches 23900 run title @a title [{"text":""}]
execute if score game-time time matches 23900 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23920 run title @a subtitle [{"text":"4","color":"yellow"}]
execute if score game-time time matches 23920 run title @a title [{"text":""}]
execute if score game-time time matches 23920 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23940 run title @a subtitle [{"text":"3","color":"red"}]
execute if score game-time time matches 23940 run title @a title [{"text":""}]
execute if score game-time time matches 23940 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23960 run title @a subtitle [{"text":"2","color":"red"}]
execute if score game-time time matches 23960 run title @a title [{"text":""}]
execute if score game-time time matches 23960 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 23980 run title @a subtitle [{"text":"1","color":"red"}]
execute if score game-time time matches 23980 run title @a title [{"text":""}]
execute if score game-time time matches 23980 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1


#deathmatch count down - stage 3 4
execute if score game-time time matches 42000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"20 minutes","color":"red"}]
execute if score game-time time matches 42000 run title @a title [{"text":""}]
execute if score game-time time matches 42000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"20 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 42000 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 54000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"10 minutes","color":"red"}]
execute if score game-time time matches 54000 run title @a title [{"text":""}]
execute if score game-time time matches 54000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"10 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 54000 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 60000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"5 minutes","color":"red"}]
execute if score game-time time matches 60000 run title @a title [{"text":""}]
execute if score game-time time matches 60000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"5 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 60000 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 64800 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"1 minute","color":"red"}]
execute if score game-time time matches 64800 run title @a title [{"text":""}]
execute if score game-time time matches 64800 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"1 minute","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 64800 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65800 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65800 run title @a title [{"text":"10","color":"yellow"}]
execute if score game-time time matches 65800 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65820 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65820 run title @a title [{"text":"9","color":"yellow"}]
execute if score game-time time matches 65820 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65840 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65840 run title @a title [{"text":"8","color":"yellow"}]
execute if score game-time time matches 65840 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65860 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65860 run title @a title [{"text":"7","color":"yellow"}]
execute if score game-time time matches 65860 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65880 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65880 run title @a title [{"text":"6","color":"yellow"}]
execute if score game-time time matches 65880 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65900 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65900 run title @a title [{"text":"5","color":"yellow"}]
execute if score game-time time matches 65900 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65920 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65920 run title @a title [{"text":"4","color":"yellow"}]
execute if score game-time time matches 65920 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65940 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65940 run title @a title [{"text":"3","color":"red"}]
execute if score game-time time matches 65940 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65960 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65960 run title @a title [{"text":"2","color":"red"}]
execute if score game-time time matches 65960 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 65980 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 65980 run title @a title [{"text":"1","color":"red"}]
execute if score game-time time matches 65980 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1


#border moving - stage 5 > 6
execute if score game-time time matches 68340 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 68340 run title @a title [{"text":"3","color":"red"}]
execute if score game-time time matches 68340 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 68360 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 68360 run title @a title [{"text":"2","color":"red"}]
execute if score game-time time matches 68360 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 68380 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 68380 run title @a title [{"text":"1","color":"red"}]
execute if score game-time time matches 68380 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

execute if score game-time time matches 68400 run title @a subtitle [{"text":"BORDER IS NOW MOVING!","color":"red"}]
execute if score game-time time matches 68400 run title @a title [{"text":""}]
execute if score game-time time matches 68400 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1