# Border state number (player = border-state, obj = border-countdown)
# -1 = death match shrinking
# 0 = shrinking
# 1 = to 500x500
# 2 = to 200x200
# 3 = to 50x50
# 4 = to 20x20
# 5 = to death match

#border state name
execute if score border-state border-countdown matches -1 run bossbar set border name {"text":"DEATH MATCH","color":"red","bold": true}
execute if score border-state border-countdown matches 0 run bossbar set border name [{"text":"Border Shrinking... ","color":"white"},{"text":"(","color":"red","extra":[{"score":{"name":"size","objective":"border-size"},"color":"red"},{"text":"x","color":"red"},{"score":{"name":"size","objective":"border-size"},"color":"red"},{"text":")","color":"red"}]}]
execute if score border-state border-countdown matches 1 run bossbar set border name [{"text":"Border will shrink to 500x500 in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
execute if score border-state border-countdown matches 2 run bossbar set border name [{"text":"Border will shrink to 200x200 in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
execute if score border-state border-countdown matches 3 run bossbar set border name [{"text":"Border will shrink to 50x50 in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
execute if score border-state border-countdown matches 4 run bossbar set border name [{"text":"Border will shrink to 20x20 in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
execute if score border-state border-countdown matches 5 run bossbar set border name [{"text":"Death Match in ","extra":[{"score":{"name":"minute","objective":"border-countdown"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"second","objective":"border-countdown"},"color":"green"},{"text":"s","color":"green"}]}]
