#running animation timer
execute unless score end-game game-state matches 1 run scoreboard players set @a cosmetics.victory_dances.playing 0
execute if score end-game game-state matches 1 if score end-timer timer matches 10..300 as @a[team=ingame] at @s run scoreboard players add @s cosmetics.victory_dances.playing 1

#victory dances
# -thunder storm
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 1.. run weather thunder
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run spreadplayers ~ ~ 0 75 false @e[type=lightning_bolt]
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run scoreboard players set @s cosmetics.victory_dances.playing 0

