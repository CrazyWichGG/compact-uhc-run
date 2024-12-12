#entities counter
# -total entities
scoreboard players set total-entities server-entities 0
execute as @e at @s run scoreboard players add total-entities server-entities 1

# -total non-player entities
scoreboard players set total-non-player-entities server-entities 0
execute as @e[type=!minecraft:player] at @s run scoreboard players add total-non-player-entities server-entities 1

# -total item entities
scoreboard players set total-item-entities server-entities 0
execute as @e[type=item] at @s run scoreboard players add total-item-entities server-entities 1