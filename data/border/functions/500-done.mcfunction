worldborder set 500
scoreboard players set border bossbar 3600
bossbar set minecraft:border max 3600
bossbar set minecraft:border name "Border will shrink to 200x200 in..."
bossbar set minecraft:border value 3600
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"200x200","color":"red"},{"text":" in 3 minutes.","color":"yellow"}]