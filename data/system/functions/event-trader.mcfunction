#reveal
execute as @e[type=minecraft:wandering_trader,name="Wandering Trader"] at @s if entity @a[distance=..10] run effect give @a[distance=..10] minecraft:glowing 1 0 true
execute as @e[type=minecraft:wandering_trader,name="Wandering Trader"] at @s if entity @a[distance=..10] run title @a[distance=..10] actionbar {"text":"Your location has been revealed. Becareful!","color":"yellow"}

#remove reveal
execute as @e[type=minecraft:wandering_trader,name="Wandering Trader"] at @s if entity @a[distance=11..] run effect clear @a[distance=11..] minecraft:glowing
execute as @e[type=minecraft:wandering_trader,name="Wandering Trader"] at @s if entity @a[distance=11..] run title @a[distance=11..] actionbar ""