#create team
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run team add spectator
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run team modify spectator color gray
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run team modify spectator seeFriendlyInvisibles true
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run team modify spectator collisionRule never

#action for late join
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run gamemode spectator @s
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run tp @s @e[type=armor_stand,name='map-center',limit=1]
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run bossbar set minecraft:gen-chunk players @a
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run bossbar set minecraft:ingame players @a
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run bossbar set minecraft:invincibility players @a
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run title @s times 0 100 20
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run title @s subtitle {"text":"The game has already started","color":"white"}
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run title @s title {"text":"You're late!","color":"yellow"}
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run tellraw @s [{"text":"\nThe game has already started! But don't worry, you can still watch other players as a spectator.","color":"yellow"}]
execute as @a[team=!ingame,team=!spectator] at @s if score lobby game-state matches 0 run team join spectator @s