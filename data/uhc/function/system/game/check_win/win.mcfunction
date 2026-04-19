# set state to post game
data modify storage uhc:game state set value "post-game"

# title
title @a[tag=!uhc.dead] subtitle "You were the last man standing"
title @a[tag=!uhc.dead] title {text:"VICTORY",color:"gold",bold:true}

title @a[tag=uhc.dead] subtitle "The game has ended"
title @a[tag=uhc.dead] title {text:"GAME OVER",color:"red",bold:true}

# remove stopwatch
stopwatch remove uhc:ingame.game_time

# run post game script
function uhc:system/post_game/init