# Border state number (player = border-state, obj = border-countdown)
# 1 = default 1500
# 2 = pvp enable | border to 100 in 30 minutes | deathmatch in 35 minutes
# 3 = deathmatch in 5 minutes
# 4 = deathmatch | border to 5 in 5 minutes
# 5 = border moving

#border state name
execute if score border-state border-countdown matches 1 run bossbar set ingame name [{"text":"PvP will be enable in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
execute if score border-state border-countdown matches 2 run bossbar set ingame name [{"text":"Deathmatch in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"red"},{"text":"m ","color":"red"},{"score":{"name":"second","objective":"border-countdown"},"color":"red"},{"text":"s","color":"red"},{"text":" | ","color":"gray"},{"text":"Border shrinking... ","color":"white"},{"text":"(","color":"red","extra":[{"score":{"name":"size","objective":"border-size"},"color":"red"},{"text":"x","color":"red"},{"score":{"name":"size","objective":"border-size"},"color":"red"},{"text":")","color":"red"}]}]}]
execute if score border-state border-countdown matches 3 run bossbar set ingame name [{"text":"Deathmatch will begin in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"red"},{"text":"m ","color":"red"},{"score":{"name":"second","objective":"border-countdown"},"color":"red"},{"text":"s","color":"red"}]}]
execute if score border-state border-countdown matches 4 run bossbar set ingame name [{"text":"Deathmatch!","color":"red","bold": true}]
#state 5 is an animation, continue with bossbar-animation.mcfunction
