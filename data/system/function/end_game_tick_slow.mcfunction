#require function permission level 3 (optional)

#slow tick for slow effect
execute if score end-game game-state matches 1 if score end-timer timer matches 2 run tick rate 1
execute if score end-game game-state matches 1 if score end-timer timer matches 3 run tick rate 2
execute if score end-game game-state matches 1 if score end-timer timer matches 4 run tick rate 3
execute if score end-game game-state matches 1 if score end-timer timer matches 5 run tick rate 5
execute if score end-game game-state matches 1 if score end-timer timer matches 6 run tick rate 8
execute if score end-game game-state matches 1 if score end-timer timer matches 7 run tick rate 12
execute if score end-game game-state matches 1 if score end-timer timer matches 8 run tick rate 16
execute if score end-game game-state matches 1 if score end-timer timer matches 9 run tick rate 20