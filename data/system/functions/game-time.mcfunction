#running ticks
scoreboard players add tick game-time 1

#running seconds
execute if score tick game-time matches 20 run scoreboard players add second game-time 1
execute if score tick game-time matches 20 run scoreboard players set tick game-time 0

#running minutes
execute if score second game-time matches 60 run scoreboard players add minute game-time 1
execute if score second game-time matches 60 run scoreboard players set second game-time 0