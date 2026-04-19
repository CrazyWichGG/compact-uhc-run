# reset value
scoreboard players set $total_player uhc.ingame.player_count 0
scoreboard players set $total_player_alive uhc.ingame.player_count 0

# set value
execute as @a[scores={uhc.ingame.player_role=0}] run scoreboard players add $total_player uhc.ingame.player_count 1
execute as @a[scores={uhc.ingame.player_role=0},tag=!uhc.dead] run scoreboard players add $total_player_alive uhc.ingame.player_count 1

# condition met
execute if score $total_player_alive uhc.ingame.player_count matches 1 run return run function uhc:system/game/check_win/win