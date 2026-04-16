# set step
scoreboard players set $step uhc.pre_game 1

# rename bossbar
bossbar set uhc:pre_game.loading_process name [{text:"Waiting for chunks to generate... "},{text:"(",color:"gray"},{score:{name:"$load_time",objective:"uhc.pre_game"},color:"gray"},{text:"s)",color:"gray"}]