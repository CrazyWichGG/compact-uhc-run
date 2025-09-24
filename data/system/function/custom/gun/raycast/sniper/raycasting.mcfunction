## Run from tf_raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function system:custom/gun/raycast/sniper/collide

scoreboard players add @s custom-gun-bullet-distance 1

#execute if score @s custom-gun-bullet-distance matches ..1000 if score @s custom-gun-bullet-distance matches 1 rotated ~ ~ if block ~ ~ ~ air run function system:custom/gun/raycast/sniper/raycasting

# Make raycast visible
execute as @a[tag=!raycasting] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 force @s
execute as @s if score @s custom-gun-is-scoping matches 1 run particle minecraft:smoke ~ ~-.3 ~ 0 0 0 0 0 force @s
execute as @s if score @s custom-gun-is-scoping matches 0 run particle minecraft:smoke ~ ~-.2 ~ 0 0 0 0 0 force @s

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score @s custom-gun-bullet-distance matches ..5000 positioned ^ ^ ^ rotated ~ ~ if block ~ ~ ~ #system:raycast_sniper_breakable run setblock ~ ~ ~ air destroy
execute if score @s custom-gun-bullet-distance matches ..5000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #system:raycast_sniper_passable run function system:custom/gun/raycast/sniper/raycasting
