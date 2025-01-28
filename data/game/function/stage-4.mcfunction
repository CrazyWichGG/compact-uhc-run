worldborder set 200
tellraw @a [{"text":"Border has stopped at 200x200. ","color":"yellow"}]
#execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

#border state (sync with system:border-bossbar-name.mcfunction)
scoreboard players set border-state border-countdown 4