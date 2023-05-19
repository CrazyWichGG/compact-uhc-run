worldborder set 50
scoreboard players set border bossbar 1200
bossbar set minecraft:border max 1200
bossbar set minecraft:border name "Border will shrink to 20x20 in..."
bossbar set minecraft:border value 1200
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"20x20","color":"red"},{"text":" in 1 minute.","color":"yellow"}]