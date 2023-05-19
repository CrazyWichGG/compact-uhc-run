worldborder set 1 30
scoreboard players set border bossbar 600
bossbar set minecraft:border max 600
bossbar set minecraft:border name {"text":"DEATH MATCH","color":"red","bold":true}
bossbar set minecraft:border value 600
bossbar set minecraft:border color red
effect give @a glowing 3600 0 true
title @a subtitle {"text":"Border shrinking...","color":"white"}
title @a title {"text":"Death Match","color":"red"}
execute as @a at @s run playsound entity.ender_dragon.growl master @s