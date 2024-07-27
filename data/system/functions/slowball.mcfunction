execute as @e[type=minecraft:snowball] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.2 5 force
execute as @e[type=minecraft:snowball,nbt={OnGround:1b}] at @s run summon potion ~ ~ ~ {Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{id:"slowness",duration:60,amplifier:1}]}}}
execute as @e[type=minecraft:snowball,nbt={OnGround:1b}] at @s run kill @s