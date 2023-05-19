worldborder set 1
scoreboard players set border bossbar 0
bossbar set minecraft:border max 1
bossbar set minecraft:border name {"text":"DEATH MATCH","color":"red","bold":true}
bossbar set minecraft:border value 0
bossbar set minecraft:border color red
execute as @e[type=armor_stand,name="map-center"] at @s run worldborder center ~1000 ~
worldborder damage amount 0.001