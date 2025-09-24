# action when rejoin
execute as @a at @s if score @s player-leave matches 1.. run title @s times 0 100 20

# reset score
execute as @a at @s if score @s player-leave matches 1.. run scoreboard players set @s player-leave 0