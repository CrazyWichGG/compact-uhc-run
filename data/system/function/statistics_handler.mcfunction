# if player score doesn't exist, it will be created with a default value of 0
execute as @a at @s unless score @s total-player-kills = @s total-player-kills run scoreboard players set @s total-player-kills 0
execute as @a at @s unless score @s total-deaths = @s total-deaths run scoreboard players set @s total-deaths 0
execute as @a at @s unless score @s total-wins = @s total-wins run scoreboard players set @s total-wins 0
execute as @a at @s unless score @s total-games-played = @s total-games-played run scoreboard players set @s total-games-played 0