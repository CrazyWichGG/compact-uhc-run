execute if score game-time time = stage-2 time run function system:game/stage_2
execute if score game-time time = stage-3 time run function system:game/stage_3
execute if score game-time time = stage-4 time run function system:game/stage_4
execute if score game-time time = stage-5 time run function system:game/stage_5
execute if score game-time time = stage-6 time run function system:game/stage_6

execute if score border-state border-countdown matches 6 run function system:border/move