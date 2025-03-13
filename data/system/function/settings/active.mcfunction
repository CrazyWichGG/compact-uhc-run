# -particle for spectator view
execute as @a[team=ingame] at @s run particle minecraft:dust{color:[1f,0f,0f],scale:1} ~ ~ ~ 0 0 0 0.2 5 force @a[team=spectator,scores={settings.personal.spectator_trails=1}]
