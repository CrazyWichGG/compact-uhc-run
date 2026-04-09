# on load/reload
tellraw @a {"text":"UHC Run loaded!","color":"green"}

# check if game is installed
execute unless data storage uhc:game {is_installed:true} run return fail

# trigger schedule function
schedule function uhc:system/schedule 5t replace