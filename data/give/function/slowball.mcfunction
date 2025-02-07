#give @s snowball[custom_name='[{"text":"Slowball","italic":false,"color":"aqua"},{"text":" (Right Click)","color":"gray"}]',lore=['[{"text":"Creates a slow aura effect","italic":false,"color":"white"}]','[{"text":"when thrown on the ground.","italic":false,"color":"white"}]']]
loot give @s loot system:custom_item/slowball
tellraw @s [{"text":"Gave 1 Slowball to "},{"selector":"@s"}]