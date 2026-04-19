# set state to pre-game
data modify storage uhc:game state set value "pre-game"

# set ingame role from selected role
execute as @a run scoreboard players operation @s uhc.ingame.player_role = @s uhc.lobby.player.selected_role

# run step 0
function uhc:system/pre_game/set_new_step/step_0

# set pre game step
function uhc:system/pre_game/set_new_step/step_1