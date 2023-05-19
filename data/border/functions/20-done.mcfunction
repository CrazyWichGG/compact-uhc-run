worldborder set 20
scoreboard players set border bossbar 1200
bossbar set minecraft:border max 1200
bossbar set minecraft:border name "Death Match in..."
bossbar set minecraft:border value 1200
bossbar set minecraft:border color green
tellraw @a [{"text":"Death Match","color":"red"},{"text":" will begin in 1 minute.","color":"yellow"}]