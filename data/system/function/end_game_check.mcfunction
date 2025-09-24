#set game state
execute if score ingame game-state matches 1 if score game-time time matches 1200.. unless score ingame player matches 1 run scoreboard players set end-game game-state 0

execute if score ingame game-state matches 1 if score game-time time matches 1200.. if score ingame player matches 1 run scoreboard players set lobby game-state 0
execute if score ingame game-state matches 1 if score game-time time matches 1200.. if score ingame player matches 1 run scoreboard players set gen-chunk game-state 0
execute if score ingame game-state matches 1 if score game-time time matches 1200.. if score ingame player matches 1 run scoreboard players set load-asset game-state 0
execute if score ingame game-state matches 1 if score game-time time matches 1200.. if score ingame player matches 1 run scoreboard players set end-game game-state 1
execute if score ingame game-state matches 1 if score game-time time matches 1200.. if score ingame player matches 1 run scoreboard players set ingame game-state 0


#end game
# -timer
execute if score end-game game-state matches 0 run scoreboard players set end-timer timer 0
execute if score end-game game-state matches 1 run scoreboard players add end-timer timer 1

# -end
execute if score end-game game-state matches 1 if score end-timer timer matches 10 run function system:game_before_end
execute if score end-game game-state matches 1 if score end-timer timer matches 600 run function system:game_end

# -invincible effect
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a weakness 1 255 true
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a resistance 1 255 true
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a regeneration 1 255 true
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a fire_resistance 1 255 true
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a saturation 1 255 true
execute if score end-game game-state matches 1 if score end-timer timer matches 1.. run effect give @a water_breathing 1 255 true