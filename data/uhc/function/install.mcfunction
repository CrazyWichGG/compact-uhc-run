# if is not in the overworld
execute unless dimension minecraft:overworld run tellraw @s {"text":"You need to be in the overworld to install the game!","color":"red"}

execute if dimension minecraft:overworld run dialog show @s uhc:install_confirm