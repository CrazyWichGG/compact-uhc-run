execute if score game-time time = border500-done time run function event:trader1
execute if score game-time time = border200-done time run function event:trader2
execute if score game-time time = border50-done time run kill @e[type=wandering_trader,name="Wandering Trader",limit=1]