#running ticks
scoreboard players add tick border-countdown 1

#running seconds
execute if score tick border-countdown matches 20 run scoreboard players remove second border-countdown 1
execute if score tick border-countdown matches 20 run scoreboard players set tick border-countdown 0

#running minutes
execute if score second border-countdown matches -1 run scoreboard players remove minute border-countdown 1 
execute if score second border-countdown matches -1 run scoreboard players set second border-countdown 59