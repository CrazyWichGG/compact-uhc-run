#sync bossbar value with bossbar border score
execute store result bossbar minecraft:ingame value run scoreboard players get border bossbar
scoreboard players remove border bossbar 1