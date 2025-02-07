#give @s hay_block[custom_name='[{"text":"Haystack","italic":false,"color":"yellow"},{"text":" (Press Q)","color":"gray"}]',lore=['[{"text":"Generate a large haystack","italic":false,"color":"white"}]','[{"text":"to protect you from enemies.","italic":false,"color":"white"}]']]
loot give @s loot system:custom_item/haystack
tellraw @s [{"text":"Gave 1 Haystack to "},{"selector":"@s"}]