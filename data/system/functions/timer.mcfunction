#use execute if score tick timer matches 20 run (command) to run a command every second (for non-timing sensitive only)

#1 second timer
scoreboard players add tick timer 1
execute if score tick timer > second timer run scoreboard players set tick timer 0

#before end timer
execute if score ingame player matches 1 run scoreboard players add before-end timer 1
execute if score ingame player matches 0 run scoreboard players set before-end timer 0