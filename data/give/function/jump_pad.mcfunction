#give @s slime_block[custom_name='[{"text":"Jump Pad","italic":false,"color":"yellow"},{"text":" (Place)","color":"gray"}]',lore=['[{"text":"Place on the ground and step on","italic":false,"color":"white"}]','[{"text":"to fly up and glide down.","italic":false,"color":"white"}]']]
loot give @s loot system:custom_item/jump_pad
tellraw @s [{"text":"Gave 1 Jump Pad to "},{"selector":"@s"}]