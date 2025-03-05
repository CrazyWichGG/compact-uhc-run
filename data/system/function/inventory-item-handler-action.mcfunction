#actions when click on items (for static item please see inventory-item-handler.mcfunction)

#spectator
# -trail
execute as @a at @s if items entity @s player.cursor *[custom_data={settings-spectator-trail:0b}] run function settings:spectator-trail/enable
execute as @a at @s if items entity @s player.cursor *[custom_data={settings-spectator-trail:1b}] run function settings:spectator-trail/disable

#clear cursor item
execute if score lobby game-state matches 1 as @a at @s if items entity @s player.cursor *[custom_data={inventory-handler:1b}] run item replace entity @s player.cursor with air

