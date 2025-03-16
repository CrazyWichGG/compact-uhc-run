#running animation timer
execute unless score end-game game-state matches 1 run scoreboard players set @a cosmetics.victory_dances.playing 0
execute if score end-game game-state matches 1 if score end-timer timer matches 10.. as @a[team=ingame] at @s run scoreboard players add @s cosmetics.victory_dances.playing 1

#victory dances
# -thunder storm
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 1.. run weather thunder
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run summon lightning_bolt ~ ~3 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run spreadplayers ~ ~ 0 75 false @e[type=lightning_bolt]
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 1 if score @s cosmetics.victory_dances.playing matches 20.. run scoreboard players set @s cosmetics.victory_dances.playing 0
# -meteor shower
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. run summon fireball ~ ~3 ~ {Tags:["cosmetics.victory_dances","cosmetics.victory_dances.meteor_shower"]}
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. run spreadplayers ~ ~ 0 75 false @e[type=fireball,tag=cosmetics.victory_dances.meteor_shower,tag=!cosmetics.kill_effects.head_rocket.teleported]
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. as @e[type=fireball,tag=cosmetics.victory_dances.meteor_shower,tag=!cosmetics.kill_effects.head_rocket.teleported] at @s run tp @s ~ ~50 ~
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. as @e[type=fireball,tag=cosmetics.victory_dances.meteor_shower,tag=!cosmetics.kill_effects.head_rocket.teleported] run data merge entity @s {Motion:[0.0d,-2.0d,0.0d]}
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. as @e[type=fireball,tag=cosmetics.victory_dances.meteor_shower,tag=!cosmetics.kill_effects.head_rocket.teleported] run tag @s add cosmetics.kill_effects.head_rocket.teleported
execute if score end-game game-state matches 1 as @a[team=ingame] at @s if score @s cosmetics.victory_dances matches 2 if score @s cosmetics.victory_dances.playing matches 2.. run scoreboard players set @s cosmetics.victory_dances.playing 0


