#text and title display
execute as @a[team=ingame] at @s run title @s title {"text":"VICTORY","color":"gold"}
execute as @a[team=ingame] at @s run title @s subtitle {"text":"You were the last man standing","color":"white"}
execute as @a[team=ingame] at @s run tellraw @a [{"text":"-------------------- "},{"text":"Game Over!","color":"red","bold":true},{"text":" ---------------------"}]
execute as @a[team=ingame] at @s run tellraw @a [{"text":"\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Winner: ","color":"yellow"},{"selector":"@a[team=ingame,limit=1]"}]
execute as @a[team=ingame] at @s run tellraw @a [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Kills: ","color":"yellow"},{"score":{"name":"@a[team=ingame,limit=1]","objective":"kills"}}]
execute as @a[team=ingame] at @s run tellraw @a {"text":"\n-----------------------------------------------------"}

#invincible effect
effect give @a weakness 20 255 true
effect give @a resistance 20 255 true
effect give @a regeneration 20 255 true

#others
execute as @a[team=ingame] at @s run playsound entity.player.levelup master @s
bossbar set minecraft:border visible false
bossbar set minecraft:main visible true
scoreboard players set game-time time 30000
execute as @e[type=armor_stand,name="map-center"] at @s run worldborder center ~ ~
worldborder set 1000
worldborder damage amount 1