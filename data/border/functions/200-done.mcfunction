worldborder set 200
scoreboard players set border bossbar 2400
bossbar set minecraft:border max 2400
bossbar set minecraft:border name "Border will shrink to 50x50 in..."
bossbar set minecraft:border value 2400
bossbar set minecraft:border color green
tellraw @a [{"text":"Border will shrink to ","color":"yellow"},{"text":"50x50","color":"red"},{"text":" in 2 minutes.","color":"yellow"}]