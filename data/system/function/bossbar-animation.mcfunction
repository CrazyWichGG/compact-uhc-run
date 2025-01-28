#main bossbar animation
scoreboard players add main bossbar-animation 1

execute if score main bossbar-animation matches 2 run bossbar set minecraft:main name [{"text":"ULTRA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 4 run bossbar set minecraft:main name [{"text":"U","color":"gold","bold":true},{"text":"LTRA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 6 run bossbar set minecraft:main name [{"text":"U","color":"white","bold":true},{"text":"L","color":"gold","bold":true},{"text":"TRA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 8 run bossbar set minecraft:main name [{"text":"UL","color":"white","bold":true},{"text":"T","color":"gold","bold":true},{"text":"RA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 10 run bossbar set minecraft:main name [{"text":"ULT","color":"white","bold":true},{"text":"R","color":"gold","bold":true},{"text":"A HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 12 run bossbar set minecraft:main name [{"text":"ULTR","color":"white","bold":true},{"text":"A","color":"gold","bold":true},{"text":" HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 14 run bossbar set minecraft:main name [{"text":"ULTRA","color":"white","bold":true},{"text":" H","color":"gold","bold":true},{"text":"ARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 16 run bossbar set minecraft:main name [{"text":"ULTRA H","color":"white","bold":true},{"text":"A","color":"gold","bold":true},{"text":"RDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 18 run bossbar set minecraft:main name [{"text":"ULTRA HA","color":"white","bold":true},{"text":"R","color":"gold","bold":true},{"text":"DCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 20 run bossbar set minecraft:main name [{"text":"ULTRA HAR","color":"white","bold":true},{"text":"D","color":"gold","bold":true},{"text":"CORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 22 run bossbar set minecraft:main name [{"text":"ULTRA HARD","color":"white","bold":true},{"text":"C","color":"gold","bold":true},{"text":"ORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 24 run bossbar set minecraft:main name [{"text":"ULTRA HARDC","color":"white","bold":true},{"text":"O","color":"gold","bold":true},{"text":"RE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 26 run bossbar set minecraft:main name [{"text":"ULTRA HARDCO","color":"white","bold":true},{"text":"R","color":"gold","bold":true},{"text":"E","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 28 run bossbar set minecraft:main name [{"text":"ULTRA HARDCOR","color":"white","bold":true},{"text":"E","color":"gold","bold":true}]
execute if score main bossbar-animation matches 30 run bossbar set minecraft:main name [{"text":"ULTRA HARDCORE","color":"white","bold":true}]
execute if score main bossbar-animation matches 35 run bossbar set minecraft:main name [{"text":"ULTRA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 40 run bossbar set minecraft:main name [{"text":"ULTRA HARDCORE","color":"white","bold":true}]
execute if score main bossbar-animation matches 45 run bossbar set minecraft:main name [{"text":"ULTRA HARDCORE","color":"yellow","bold":true}]
execute if score main bossbar-animation matches 145.. run scoreboard players set main bossbar-animation 0

#ingame stage-final bossbar animation
execute unless score border-state border-countdown matches 6 run scoreboard players set ingame-stage-final bossbar-animation 0
execute if score border-state border-countdown matches 6 run scoreboard players add ingame-stage-final bossbar-animation 1

execute if score ingame-stage-final bossbar-animation matches 20 run bossbar set minecraft:ingame name [{"text":"/!\\ ","color":"red"},{"text":"BORDER IS NOW MOVING!","color":"white"},{"text":" /!\\","color":"red"}]
execute if score ingame-stage-final bossbar-animation matches 40 run bossbar set minecraft:ingame name [{"text":"/!\\ BORDER IS NOW MOVING! /!\\","color":"red"}]
execute if score ingame-stage-final bossbar-animation matches 40.. run scoreboard players set ingame-stage-final bossbar-animation 0

