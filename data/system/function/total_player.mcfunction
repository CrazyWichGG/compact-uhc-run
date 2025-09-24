#check total players left
execute run scoreboard players set player-left player 0
execute as @a at @s run scoreboard players add player-left player 1

#check total ingame players
execute run scoreboard players set ingame player 0
execute as @a[team=ingame] at @s run scoreboard players add ingame player 1

#check total spectators
execute run scoreboard players set spectator player 0
execute as @a[team=spectator] at @s run scoreboard players add spectator player 1