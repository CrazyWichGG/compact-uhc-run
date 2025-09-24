playsound entity.generic.explode master @s ~ ~ ~ 0.7 1 1
item modify entity @s weapon.offhand system:custom/gun/sniper_no_ammo
item replace entity @s weapon.mainhand from entity @s weapon.offhand
loot replace entity @s weapon.offhand loot system:inventory_controller/custom/gun/offhand_item_replace

## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute as @s at @s anchored eyes positioned ^ ^ ^ run function system:custom/gun/raycast/sniper/raycasting

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting

scoreboard players set @s custom-gun-bullet-distance 0
