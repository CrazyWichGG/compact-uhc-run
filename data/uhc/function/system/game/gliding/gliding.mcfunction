# reset value
execute as @a[tag=!uhc.gliding] run scoreboard players reset @s uhc.ingame.gliding

# run effect
execute as @a[tag=uhc.gliding] run effect give @s slow_falling infinite 0 true

# remove gliding
tag @a[tag=uhc.gliding,scores={uhc.ingame.player_role=1}] remove uhc.gliding
execute as @a[tag=uhc.gliding,predicate=uhc:is_on_ground] if score @s uhc.ingame.gliding matches 20.. run return run function uhc:system/game/gliding/land

# increase gliding time
execute as @a[tag=uhc.gliding] run scoreboard players add @s uhc.ingame.gliding 1
