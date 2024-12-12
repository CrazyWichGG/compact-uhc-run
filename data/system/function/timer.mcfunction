#use execute if score tick timer matches 20 run (command) to run a command every second (for non-timing sensitive only)

#1 second timer
scoreboard players add tick timer 1
execute if score tick timer > second timer run scoreboard players set tick timer 0

#before start timer

#before end timer
execute if score ingame player matches 1 run scoreboard players add end-timer timer 1
execute if score ingame player matches 0 run scoreboard players set end-timer timer 0