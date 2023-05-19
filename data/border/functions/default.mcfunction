worldborder set 1000
scoreboard players set border bossbar 6000
bossbar set minecraft:border max 6000
bossbar set minecraft:border name "Border will shrink to 500x500 in..."
bossbar set minecraft:border value 6000
bossbar set minecraft:border color green
bossbar set minecraft:border style notched_10
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"500x500","color":"red"},{"text":" in 5 minutes.","color":"yellow"}]