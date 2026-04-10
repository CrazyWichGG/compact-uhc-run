# if game is already installed
execute if data storage uhc:game {is_installed:true} run return run tellraw @s {"text":"UHC is already installed!","color":"red"}

# if is not in the overworld
execute unless dimension minecraft:overworld run return run tellraw @s {"text":"You need to be in the overworld to install the game!","color":"red"}

function uhc:system/install/start