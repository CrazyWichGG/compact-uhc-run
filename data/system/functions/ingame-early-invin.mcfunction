#running ticks and progress
scoreboard players add tick invincibility-bossbar 1
scoreboard players remove progress invincibility-bossbar 1

execute store result bossbar minecraft:invincibility value run scoreboard players get progress invincibility-bossbar

#running seconds
execute if score tick invincibility-bossbar matches 20 run scoreboard players remove second invincibility-bossbar 1
execute if score tick invincibility-bossbar matches 20 run scoreboard players set tick invincibility-bossbar 0

#display bossbar name
bossbar set minecraft:invincibility name [{"text":"Early Invincibility ","color":"white"},{"text":"(","color":"aqua","extra":[{"score":{"name":"second","objective":"invincibility-bossbar"},"color":"aqua"},{"text":"s)","color":"aqua"}]}]

#invincible effect
execute if score progress invincibility-bossbar matches 1.. run effect give @a regeneration 11 255 true
execute if score progress invincibility-bossbar matches 1.. run effect give @a resistance 11 255 true
execute if score progress invincibility-bossbar matches 1.. run effect give @a fire_resistance 11 255 true
execute if score progress invincibility-bossbar matches 1.. run effect give @a water_breathing 11 255 true

#ingame invin end event
execute if score progress invincibility-bossbar matches 0 run bossbar set minecraft:invincibility visible false
execute if score progress invincibility-bossbar matches 0 run effect clear @a[team=ingame] regeneration
execute if score progress invincibility-bossbar matches 0 run effect clear @a[team=ingame] resistance
execute if score progress invincibility-bossbar matches 0 run effect clear @a[team=ingame] fire_resistance
execute if score progress invincibility-bossbar matches 0 run effect clear @a[team=ingame] water_breathing
