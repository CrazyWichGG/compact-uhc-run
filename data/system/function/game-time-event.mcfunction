# update game time when ingame
execute if score ingame game-state matches 1 run scoreboard players add game-time time 1

# pvp count down - state 1
execute if score game-time time matches 6000 run title @a subtitle [{"text":"PvP enable in ","color":"white"},{"text":"5 minutes","color":"red"}]
execute if score game-time time matches 6000 run title @a title [{"text":""}]
execute if score game-time time matches 6000 run tellraw @a [{"text":"PvP will be enabled in ","color":"yellow"},{"text":"5 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 6000 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 10800 run title @a subtitle [{"text":"PvP enable in ","color":"white"},{"text":"1 minute","color":"red"}]
execute if score game-time time matches 10800 run title @a title [{"text":""}]
execute if score game-time time matches 10800 run tellraw @a [{"text":"PvP will be enabled in ","color":"yellow"},{"text":"1 minute","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 10800 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11800 run title @a subtitle [{"text":"10","color":"yellow"}]
execute if score game-time time matches 11800 run title @a title [{"text":""}]
execute if score game-time time matches 11800 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11820 run title @a subtitle [{"text":"9","color":"yellow"}]
execute if score game-time time matches 11820 run title @a title [{"text":""}]
execute if score game-time time matches 11820 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11840 run title @a subtitle [{"text":"8","color":"yellow"}]
execute if score game-time time matches 11840 run title @a title [{"text":""}]
execute if score game-time time matches 11840 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11860 run title @a subtitle [{"text":"7","color":"yellow"}]
execute if score game-time time matches 11860 run title @a title [{"text":""}]
execute if score game-time time matches 11860 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11880 run title @a subtitle [{"text":"6","color":"yellow"}]
execute if score game-time time matches 11880 run title @a title [{"text":""}]
execute if score game-time time matches 11880 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11900 run title @a subtitle [{"text":"5","color":"yellow"}]
execute if score game-time time matches 11900 run title @a title [{"text":""}]
execute if score game-time time matches 11900 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11920 run title @a subtitle [{"text":"4","color":"yellow"}]
execute if score game-time time matches 11920 run title @a title [{"text":""}]
execute if score game-time time matches 11920 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11940 run title @a subtitle [{"text":"3","color":"red"}]
execute if score game-time time matches 11940 run title @a title [{"text":""}]
execute if score game-time time matches 11940 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11960 run title @a subtitle [{"text":"2","color":"red"}]
execute if score game-time time matches 11960 run title @a title [{"text":""}]
execute if score game-time time matches 11960 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 11980 run title @a subtitle [{"text":"1","color":"red"}]
execute if score game-time time matches 11980 run title @a title [{"text":""}]
execute if score game-time time matches 11980 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1


#deathmatch count down - state 2 3
execute if score game-time time matches 30000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"20 minutes","color":"red"}]
execute if score game-time time matches 30000 run title @a title [{"text":""}]
execute if score game-time time matches 30000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"20 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 30000 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 42000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"10 minutes","color":"red"}]
execute if score game-time time matches 42000 run title @a title [{"text":""}]
execute if score game-time time matches 42000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"10 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 42000 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 48000 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"5 minutes","color":"red"}]
execute if score game-time time matches 48000 run title @a title [{"text":""}]
execute if score game-time time matches 48000 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"5 minutes","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 48000 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 52800 run title @a subtitle [{"text":"Deathmatch in ","color":"white"},{"text":"1 minute","color":"red"}]
execute if score game-time time matches 52800 run title @a title [{"text":""}]
execute if score game-time time matches 52800 run tellraw @a [{"text":"Deathmatch will begin in ","color":"yellow"},{"text":"1 minute","color":"red"}, {"text":".","color":"yellow"}]
execute if score game-time time matches 52800 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53800 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53800 run title @a title [{"text":"10","color":"yellow"}]
execute if score game-time time matches 53800 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53820 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53820 run title @a title [{"text":"9","color":"yellow"}]
execute if score game-time time matches 53820 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53840 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53840 run title @a title [{"text":"8","color":"yellow"}]
execute if score game-time time matches 53840 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53860 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53860 run title @a title [{"text":"7","color":"yellow"}]
execute if score game-time time matches 53860 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53880 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53880 run title @a title [{"text":"6","color":"yellow"}]
execute if score game-time time matches 53880 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53900 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53900 run title @a title [{"text":"5","color":"yellow"}]
execute if score game-time time matches 53900 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53920 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53920 run title @a title [{"text":"4","color":"yellow"}]
execute if score game-time time matches 53920 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53940 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53940 run title @a title [{"text":"3","color":"red"}]
execute if score game-time time matches 53940 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53960 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53960 run title @a title [{"text":"2","color":"red"}]
execute if score game-time time matches 53960 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 53980 run title @a subtitle [{"text":"Until Deathmatch"}]
execute if score game-time time matches 53980 run title @a title [{"text":"1","color":"red"}]
execute if score game-time time matches 53980 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

#border moving - state 4 > 5
execute if score game-time time matches 56340 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 56340 run title @a title [{"text":"3","color":"red"}]
execute if score game-time time matches 56340 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 56360 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 56360 run title @a title [{"text":"2","color":"red"}]
execute if score game-time time matches 56360 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 56380 run title @a subtitle [{"text":"BORDER IS GOING TO MOVE IN","color":"red"}]
execute if score game-time time matches 56380 run title @a title [{"text":"1","color":"red"}]
execute if score game-time time matches 56380 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1 1

execute if score game-time time matches 56400 run title @a subtitle [{"text":"BORDER IS NOW MOVING!","color":"red"}]
execute if score game-time time matches 56400 run title @a title [{"text":"/!\\","color":"red"}]
execute if score game-time time matches 56400 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2 1