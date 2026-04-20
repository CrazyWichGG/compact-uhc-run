# lobby
scoreboard objectives add uhc.scoreboard_display.lobby dummy {text:"UHC Run",color:"yellow",bold:true}

# scoreboard init
scoreboard objectives modify uhc.scoreboard_display.lobby numberformat blank

scoreboard players set $line1 uhc.scoreboard_display.lobby 100
scoreboard players set $line2 uhc.scoreboard_display.lobby 99
scoreboard players set $line3 uhc.scoreboard_display.lobby 98
scoreboard players set $line4 uhc.scoreboard_display.lobby 97
scoreboard players set $line5 uhc.scoreboard_display.lobby 96
scoreboard players set $line6 uhc.scoreboard_display.lobby 95
scoreboard players set $footer uhc.scoreboard_display.lobby 0

scoreboard players display name $line1 uhc.scoreboard_display.lobby ""
scoreboard players display name $line2 uhc.scoreboard_display.lobby "Starting in:"
scoreboard players display name $line3 uhc.scoreboard_display.lobby "Waiting..."
scoreboard players display name $line4 uhc.scoreboard_display.lobby ""
scoreboard players display name $line5 uhc.scoreboard_display.lobby "Mode: N/A"
scoreboard players display name $line6 uhc.scoreboard_display.lobby ""
scoreboard players display name $footer uhc.scoreboard_display.lobby {text:"Compact UHC Run",color:"gray"}
