## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s 36 arrow by @p[tag=raycasting]

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s 20 arrow by @p[tag=raycasting]

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s 10 arrow by @p[tag=raycasting]

particle explosion ~ ~ ~ 0 0 0 0 5
#damage @s 10 arrow by @p[tag=raycasting]



#### Max out range to end the raycast
scoreboard players set @p[tag=raycasting] custom-gun-bullet-distance 5000

