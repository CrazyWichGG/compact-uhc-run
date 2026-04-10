# if game is not installed
execute unless data storage uhc:game {is_installed:true} run return run tellraw @s {"text":"UHC is not installed yet!","color":"red"}

function uhc:system/uninstall/start