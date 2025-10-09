# installation process

# storage data
## static (per game)
data modify storage uhc:data game.center_pos set from entity @n[type=marker,nbt={data:{is_map_center:1b}}] Pos

## dynamic
### via game process
data modify storage uhc:data game.state set value "lobby"
data modify storage uhc:data game.gamemode set value "solo"
data modify storage uhc:data game.phase set value ""

### via game config
data modify storage uhc:data game.config set value {}

# players data
# execute as @a run data merge entity @s {data:{game:{team:'',is_spectator:0b},lobby:{is_ready:0b,role:'player'}}}


# lobby environment

## setworldspawn
setworldspawn ~ ~ ~
spawnpoint @a ~ ~ ~
## worldborder
worldborder center ~ ~
worldborder set 51
## time
time set day
## weather
weather clear



# scores

## temporary scoreboard
scoreboard objectives add uhc.temp.statistics.death deathCount
scoreboard objectives add uhc.temp.statistics.player_kill playerKillCount
scoreboard objectives add uhc.temp.statistics.damage_dealt custom:damage_absorbed


## role
scoreboard objectives add uhc.game.player.role dummy


## lobby
### ready status
scoreboard objectives add uhc.lobby.player.ready dummy
scoreboard objectives add uhc.lobby.player.is_ready dummy
### role
scoreboard objectives add uhc.lobby.player.selected_role dummy
### team
scoreboard objectives add uhc.lobby.player.selected_team dummy

## statistics
### total
scoreboard objectives add uhc.game.statistics.total.deaths dummy
scoreboard objectives add uhc.game.statistics.total.player_kills dummy
scoreboard objectives add uhc.game.statistics.total.wins dummy
scoreboard objectives add uhc.game.statistics.total.games_played dummy
scoreboard objectives add uhc.game.statistics.total.damage_dealt dummy

### ingame
#### personal
scoreboard objectives add uhc.game.statistics.ingame.player_kills dummy
scoreboard objectives add uhc.game.statistics.ingame.damage_dealt dummy
#### team
scoreboard objectives add uhc.game.statistics.ingame.team_kills.aqua dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.blue dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.cyan dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.gray dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.green dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.purple dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.orange dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.lime dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.pink dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.red dummy
scoreboard objectives add uhc.game.statistics.ingame.team_kills.yellow dummy

## players' info
scoreboard objectives add uhc.game.players_info.health health
scoreboard objectives add uhc.game.players_info.armor armor
scoreboard objectives add uhc.game.players_info.food food
scoreboard objectives add uhc.game.players_info.air air



## ingame


## scoreboard display
scoreboard objectives add uhc.game.scoreboard_display.lobby dummy

### black (empty)
### white (observer)
scoreboard objectives add uhc.game.scoreboard_display.ingame.observer.solo dummy
scoreboard objectives add uhc.game.scoreboard_display.ingame.observer.team dummy
### gray (spectator solo)
scoreboard objectives add uhc.game.scoreboard_display.ingame.spectator.solo dummy
### red (player solo)
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.solo dummy

### team colors
### aqua => aqua
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.aqua dummy
### blue => blue
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.blue dummy
### dark_aqua => cyan
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.cyan dummy
### dark_blue => dark_blue (unused)
# scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.dark_blue dummy
### dark_gray => gray
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.gray dummy
### dark_green => green
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.green dummy
### dark_purple => purple
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.purple dummy
### dark_red => dark_red (unused)
# scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.dark_red dummy
### gold => orange
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.orange dummy
### green => lime
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.lime dummy
### light_purple => pink
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.pink dummy
### red => red
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.red dummy
### yellow => yellow
scoreboard objectives add uhc.game.scoreboard_display.ingame.player.team.yellow dummy



# teams

## lobby team

### observer
#### observer not ready
team add uhc.lobby.observer.not_ready
team modify uhc.lobby.observer.not_ready color gray
team modify uhc.lobby.observer.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"block/observer_front","color":"white"},{"text":" "}]
team modify uhc.lobby.observer.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### observer ready
team add uhc.lobby.observer.ready
team modify uhc.lobby.observer.ready color white
team modify uhc.lobby.observer.ready prefix [{"type":"object","atlas":"blocks","sprite":"block/observer_front","color":"white"},{"text":" "}]
team modify uhc.lobby.observer.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]

### solo
#### player not ready
team add uhc.lobby.solo.player.not_ready
team modify uhc.lobby.solo.player.not_ready color gray
team modify uhc.lobby.solo.player.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/iron_sword","color":"white"},{"text":" "}]
team modify uhc.lobby.solo.player.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### player ready
team add uhc.lobby.solo.player.ready
team modify uhc.lobby.solo.player.ready color white
team modify uhc.lobby.solo.player.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/iron_sword","color":"white"},{"text":" "}]
team modify uhc.lobby.solo.player.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]

### team
#### team aqua (not ready)
team add uhc.lobby.team.aqua.not_ready
team modify uhc.lobby.team.aqua.not_ready color gray
team modify uhc.lobby.team.aqua.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/light_blue_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.aqua.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team aqua (ready)
team add uhc.lobby.team.aqua.ready
team modify uhc.lobby.team.aqua.ready color aqua
team modify uhc.lobby.team.aqua.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/light_blue_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.aqua.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team blue (not ready)
team add uhc.lobby.team.blue.not_ready
team modify uhc.lobby.team.blue.not_ready color gray
team modify uhc.lobby.team.blue.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/blue_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.blue.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team blue (ready)
team add uhc.lobby.team.blue.ready
team modify uhc.lobby.team.blue.ready color blue
team modify uhc.lobby.team.blue.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/blue_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.blue.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team cyan (not ready)
team add uhc.lobby.team.cyan.not_ready
team modify uhc.lobby.team.cyan.not_ready color gray
team modify uhc.lobby.team.cyan.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/cyan_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.cyan.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team cyan (ready)
team add uhc.lobby.team.cyan.ready
team modify uhc.lobby.team.cyan.ready color dark_aqua
team modify uhc.lobby.team.cyan.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/cyan_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.cyan.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team gray (not ready)
team add uhc.lobby.team.gray.not_ready
team modify uhc.lobby.team.gray.not_ready color gray
team modify uhc.lobby.team.gray.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/gray_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.gray.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team gray (ready)
team add uhc.lobby.team.gray.ready
team modify uhc.lobby.team.gray.ready color dark_gray
team modify uhc.lobby.team.gray.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/gray_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.gray.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team green (not ready)
team add uhc.lobby.team.green.not_ready
team modify uhc.lobby.team.green.not_ready color gray
team modify uhc.lobby.team.green.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/green_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.green.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team green (ready)
team add uhc.lobby.team.green.ready
team modify uhc.lobby.team.green.ready color dark_green
team modify uhc.lobby.team.green.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/green_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.green.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team purple (not ready)
team add uhc.lobby.team.purple.not_ready
team modify uhc.lobby.team.purple.not_ready color gray
team modify uhc.lobby.team.purple.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/purple_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.purple.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team purple (ready)
team add uhc.lobby.team.purple.ready
team modify uhc.lobby.team.purple.ready color dark_purple
team modify uhc.lobby.team.purple.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/purple_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.purple.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team orange (not ready)
team add uhc.lobby.team.orange.not_ready
team modify uhc.lobby.team.orange.not_ready color gray
team modify uhc.lobby.team.orange.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/orange_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.orange.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team orange (ready)
team add uhc.lobby.team.orange.ready
team modify uhc.lobby.team.orange.ready color gold
team modify uhc.lobby.team.orange.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/orange_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.orange.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team lime (not ready)
team add uhc.lobby.team.lime.not_ready
team modify uhc.lobby.team.lime.not_ready color gray
team modify uhc.lobby.team.lime.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/lime_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.lime.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team lime (ready)
team add uhc.lobby.team.lime.ready
team modify uhc.lobby.team.lime.ready color green
team modify uhc.lobby.team.lime.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/lime_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.lime.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
##### team pink (not ready)
team add uhc.lobby.team.pink.not_ready
team modify uhc.lobby.team.pink.not_ready color gray
team modify uhc.lobby.team.pink.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/pink_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.pink.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team pink (ready)
team add uhc.lobby.team.pink.ready
team modify uhc.lobby.team.pink.ready color light_purple
team modify uhc.lobby.team.pink.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/pink_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.pink.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team red (not ready)
team add uhc.lobby.team.red.not_ready
team modify uhc.lobby.team.red.not_ready color gray
team modify uhc.lobby.team.red.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/red_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.red.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team red (ready)
team add uhc.lobby.team.red.ready
team modify uhc.lobby.team.red.ready color red
team modify uhc.lobby.team.red.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/red_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.red.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]
#### team yellow (not ready)
team add uhc.lobby.team.yellow.not_ready
team modify uhc.lobby.team.yellow.not_ready color gray
team modify uhc.lobby.team.yellow.not_ready prefix [{"type":"object","atlas":"blocks","sprite":"item/yellow_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.yellow.not_ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/cancel","color":"white"}]
#### team yellow (ready)
team add uhc.lobby.team.yellow.ready
team modify uhc.lobby.team.yellow.ready color yellow
team modify uhc.lobby.team.yellow.ready prefix [{"type":"object","atlas":"blocks","sprite":"item/yellow_dye","color":"white"},{"text":" "}]
team modify uhc.lobby.team.yellow.ready suffix [{"text":" "},{"type":"object","atlas":"gui","sprite":"container/beacon/confirm","color":"white"}]



## ingame teams
### white (observer)
team add uhc.ingame.observer
team modify uhc.ingame.observer color white
team modify uhc.ingame.observer friendlyFire true
team modify uhc.ingame.observer prefix [{"type":"object","atlas":"blocks","sprite":"block/observer_front","color":"white"},{"text":" "}]
### gray (spectator solo)
team add uhc.ingame.solo.spectator
team modify uhc.ingame.solo.spectator color gray
team modify uhc.ingame.solo.spectator friendlyFire true
team modify uhc.ingame.solo.spectator prefix [{"text":"☠ "}]
### red (player solo)
team add uhc.ingame.solo.player
team modify uhc.ingame.solo.player color red
team modify uhc.ingame.solo.player friendlyFire true
team modify uhc.ingame.solo.player seeFriendlyInvisibles false
### aqua
team add uhc.ingame.team.aqua
team modify uhc.ingame.team.aqua color aqua
team modify uhc.ingame.team.aqua friendlyFire false
team modify uhc.ingame.team.aqua seeFriendlyInvisibles true
team modify uhc.ingame.team.aqua prefix [{"type":"object","atlas":"blocks","sprite":"item/light_blue_dye","color":"white"},{"text":" "}]
### blue
team add uhc.ingame.team.blue
team modify uhc.ingame.team.blue color blue
team modify uhc.ingame.team.blue friendlyFire false
team modify uhc.ingame.team.blue seeFriendlyInvisibles true
team modify uhc.ingame.team.blue prefix [{"type":"object","atlas":"blocks","sprite":"item/blue_dye","color":"white"},{"text":" "}]
### cyan
team add uhc.ingame.team.cyan
team modify uhc.ingame.team.cyan color dark_aqua
team modify uhc.ingame.team.cyan friendlyFire false
team modify uhc.ingame.team.cyan seeFriendlyInvisibles true
team modify uhc.ingame.team.cyan prefix [{"type":"object","atlas":"blocks","sprite":"item/cyan_dye","color":"white"},{"text":" "}]
### gray
team add uhc.ingame.team.gray
team modify uhc.ingame.team.gray color dark_gray
team modify uhc.ingame.team.gray friendlyFire false
team modify uhc.ingame.team.gray seeFriendlyInvisibles true
team modify uhc.ingame.team.gray prefix [{"type":"object","atlas":"blocks","sprite":"item/gray_dye","color":"white"},{"text":" "}]
### green
team add uhc.ingame.team.green
team modify uhc.ingame.team.green color dark_green
team modify uhc.ingame.team.green friendlyFire false
team modify uhc.ingame.team.green seeFriendlyInvisibles true
team modify uhc.ingame.team.green prefix [{"type":"object","atlas":"blocks","sprite":"item/green_dye","color":"white"},{"text":" "}]
### purple
team add uhc.ingame.team.purple
team modify uhc.ingame.team.purple color dark_purple
team modify uhc.ingame.team.purple friendlyFire false
team modify uhc.ingame.team.purple seeFriendlyInvisibles true
team modify uhc.ingame.team.purple prefix [{"type":"object","atlas":"blocks","sprite":"item/purple_dye","color":"white"},{"text":" "}]
### orange
team add uhc.ingame.team.orange
team modify uhc.ingame.team.orange color gold
team modify uhc.ingame.team.orange friendlyFire false
team modify uhc.ingame.team.orange seeFriendlyInvisibles true
team modify uhc.ingame.team.orange prefix [{"type":"object","atlas":"blocks","sprite":"item/orange_dye","color":"white"},{"text":" "}]
### lime
team add uhc.ingame.team.lime
team modify uhc.ingame.team.lime color green
team modify uhc.ingame.team.lime friendlyFire false
team modify uhc.ingame.team.lime seeFriendlyInvisibles true
team modify uhc.ingame.team.lime prefix [{"type":"object","atlas":"blocks","sprite":"item/lime_dye","color":"white"},{"text":" "}]
### pink
team add uhc.ingame.team.pink
team modify uhc.ingame.team.pink color light_purple
team modify uhc.ingame.team.pink friendlyFire false
team modify uhc.ingame.team.pink seeFriendlyInvisibles true
team modify uhc.ingame.team.pink prefix [{"type":"object","atlas":"blocks","sprite":"item/pink_dye","color":"white"},{"text":" "}]
### red
team add uhc.ingame.team.red
team modify uhc.ingame.team.red color red
team modify uhc.ingame.team.red friendlyFire false
team modify uhc.ingame.team.red seeFriendlyInvisibles true
team modify uhc.ingame.team.red prefix [{"type":"object","atlas":"blocks","sprite":"item/red_dye","color":"white"},{"text":" "}]
### yellow
team add uhc.ingame.team.yellow
team modify uhc.ingame.team.yellow color yellow
team modify uhc.ingame.team.yellow friendlyFire false
team modify uhc.ingame.team.yellow seeFriendlyInvisibles true
team modify uhc.ingame.team.yellow prefix [{"type":"object","atlas":"blocks","sprite":"item/yellow_dye","color":"white"},{"text":" "}]



# bossbar
## lobby
### ready status
bossbar add uhc:lobby.player.ready "uhc:lobby.player.ready"
bossbar set uhc:lobby.player.ready color green
bossbar set uhc:lobby.player.ready style notched_10
bossbar set uhc:lobby.player.ready players @a
bossbar set uhc:lobby.player.ready visible true


# gamerules (static settings)
## environment
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule globalSoundEvents false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

## gameplay
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule playersSleepingPercentage 101

# gamerules (dynamic settings)
## via game process
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule tntExplodes false
gamerule mobGriefing false
gamerule allowEnteringNetherUsingPortals false
gamerule pvp false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule drowningDamage false

## via game config
gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule locatorBar false
gamerule reducedDebugInfo false
gamerule spectatorsGenerateChunks false