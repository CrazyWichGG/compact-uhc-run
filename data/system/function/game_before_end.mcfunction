#text and title display
execute as @a[team=ingame] at @s run title @s subtitle {"text":"You were the last man standing","color":"white"}
execute as @a[team=ingame] at @s run title @s title {"text":"VICTORY","color":"gold"}

execute as @a[team=spectator] at @s run title @s title {"text":"Game Over!","color":"red"}
execute as @a[team=spectator] at @s run title @s subtitle [{"selector":"@a[team=ingame]"},{"text":" won the game","color":"white"}]

execute as @a[team=ingame] at @s run tellraw @a [{"text":"\n------------------- "},{"text":"Game Over!","color":"red","bold":true},{"text":" -------------------"}]
execute as @a[team=ingame] at @s run tellraw @a [{"text":"\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Winner: ","color":"yellow"},{"selector":"@a[team=ingame,limit=1]"}]
execute as @a[team=ingame] at @s run tellraw @a [{"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Kills: ","color":"yellow"},{"score":{"name":"@a[team=ingame,limit=1]","objective":"ingame-player-kills"}}]
execute as @a[team=ingame] at @s run tellraw @a [{"text":"\n   \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Game time: ","color":"yellow"},{"score":{"name":"minute","objective":"game-time"},"color":"red"},{"text":"m ","color":"red"},{"score":{"name":"second","objective":"game-time"},"color":"red"},{"text":"s","color":"red"}]
execute as @a[team=ingame] at @s run tellraw @a {"text":"\n---------------------------------------------------"}

#play sound
execute as @a[team=ingame] at @s run playsound entity.player.levelup master @s

#statistics
execute as @a[team=ingame] at @s run scoreboard players add @s total-wins 1

#set bossbar
bossbar set minecraft:ingame players @a
bossbar set minecraft:ingame visible false
bossbar set minecraft:gen-chunk players @a
bossbar set minecraft:gen-chunk visible false
bossbar set minecraft:invincibility players @a
bossbar set minecraft:invincibility visible false
bossbar set minecraft:main players @a
bossbar set minecraft:main visible true

#reset scoreboard
scoreboard players set game-time time -2147483648
scoreboard players set border-state border-countdown 0

#reset armor stand
kill @e[type=armor_stand,name="border-center"]
kill @e[type=armor_stand,name="border-target"]
execute as @e[type=armor_stand,name="map-center"] at @s run worldborder center ~ ~

#worlborder
worldborder set 1500
worldborder damage amount 1

#customs
