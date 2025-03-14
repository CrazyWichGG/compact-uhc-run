#permission filter 1
execute as @s[tag=setup-random-request] at @s run tellraw @s {"text":"Randomizing location...","color":"green"}

#random location
execute as @s[tag=setup-random-request] at @s run spreadplayers ~ ~ 0 10000 false @s
execute as @s[tag=setup-random-request] at @s run tp @a @s

#setup process
execute as @s[tag=setup-random-request] at @s run tag @s add setup-request
#execute as @s[tag=setup-random-request] at @s run function setup:confirm

#permission filter 2
execute as @s[tag=!setup-request] at @s run tellraw @s {"text":"Unknown function install:confirm","color":"red"}
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"Starting setup map, this may take a few time.","color":"green"}
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"DO NOT MOVE!","color":"red"}

#armor stand center
execute as @s[tag=setup-request] at @s align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"map-center"}'}

#score time
execute as @s[tag=setup-request] at @a run scoreboard objectives add time dummy
execute as @s[tag=setup-request] at @s run scoreboard players set game-time time 0
execute as @s[tag=setup-request] at @s run scoreboard players set stage-1 time 0
execute as @s[tag=setup-request] at @s run scoreboard players set stage-2 time 12000
execute as @s[tag=setup-request] at @s run scoreboard players set stage-3 time 24000
execute as @s[tag=setup-request] at @s run scoreboard players set stage-4 time 60000
execute as @s[tag=setup-request] at @s run scoreboard players set stage-5 time 66000
execute as @s[tag=setup-request] at @s run scoreboard players set stage-6 time 68400

#score border countdown
execute as @s[tag=setup-request] at @s run scoreboard objectives add border-countdown dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick border-countdown 0
execute as @s[tag=setup-request] at @s run scoreboard players set second border-countdown 0
execute as @s[tag=setup-request] at @s run scoreboard players set minute border-countdown 0
execute as @s[tag=setup-request] at @s run scoreboard players set border-state border-countdown 0

#score border size
execute as @s[tag=setup-request] at @s run scoreboard objectives add border-size dummy
execute as @s[tag=setup-request] at @s run scoreboard players set size border-size 0

#score bossbar
execute as @s[tag=setup-request] at @s run scoreboard objectives add bossbar dummy
execute as @s[tag=setup-request] at @s run scoreboard players set border bossbar 0

#score health
execute as @s[tag=setup-request] at @s run scoreboard objectives add health health {"text":"♥","color":"red"}

#score hunger
execute as @s[tag=setup-request] at @s run scoreboard objectives add player-hunger food

#score armor
execute as @s[tag=setup-request] at @s run scoreboard objectives add player-armor armor

#score ingame-player-kills
execute as @s[tag=setup-request] at @s run scoreboard objectives add ingame-player-kills playerKillCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a ingame-player-kills 0

#score total-player-kills
execute as @s[tag=setup-request] at @s run scoreboard objectives add total-player-kills playerKillCount

#score ingame-death (for ingame death detection)
execute as @s[tag=setup-request] at @s run scoreboard objectives add ingame-death deathCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a ingame-death 0

#score total-deaths
execute as @s[tag=setup-request] at @s run scoreboard objectives add total-deaths deathCount

#score total-wins
execute as @s[tag=setup-request] at @s run scoreboard objectives add total-wins dummy

#score total games played
execute as @s[tag=setup-request] at @s run scoreboard objectives add total-games-played dummy

#score emerald-player-kills (for emerald)
execute as @s[tag=setup-request] at @s run scoreboard objectives add emerald-player-kills playerKillCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a emerald-player-kills 0

#score emerald-entity-kills (for emerald)
execute as @s[tag=setup-request] at @s run scoreboard objectives add emerald-entity-kills totalKillCount
execute as @s[tag=setup-request] at @s run scoreboard players set @a emerald-entity-kills 0

#score timer
execute as @s[tag=setup-request] at @s run scoreboard objectives add timer dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick timer 0
execute as @s[tag=setup-request] at @s run scoreboard players set second timer 20
execute as @s[tag=setup-request] at @s run scoreboard players set end-timer timer 0

#score player
execute as @s[tag=setup-request] at @s run scoreboard objectives add player dummy
execute as @s[tag=setup-request] at @s run scoreboard players set ingame player 0
execute as @s[tag=setup-request] at @s run scoreboard players set spectator player 0
execute as @s[tag=setup-request] at @s run scoreboard players set player-left player 0
execute as @s[tag=setup-request] at @s run scoreboard players set no-player player 0
execute as @s[tag=setup-request] at @s run scoreboard players set can-start player 2

#score shop
execute as @s[tag=setup-request] at @s run scoreboard objectives add hold-shop dummy
execute as @s[tag=setup-request] at @s run scoreboard players set @a hold-shop 0

#score gliding
execute as @s[tag=setup-request] at @s run scoreboard objectives add gliding dummy

#score game state
execute as @s[tag=setup-request] at @s run scoreboard objectives add game-state dummy
execute as @s[tag=setup-request] at @s run scoreboard players set lobby game-state 1
execute as @s[tag=setup-request] at @s run scoreboard players set ingame game-state 0
execute as @s[tag=setup-request] at @s run scoreboard players set gen-chunk game-state 0
execute as @s[tag=setup-request] at @s run scoreboard players set load-asset game-state 0
execute as @s[tag=setup-request] at @s run scoreboard players set end-game game-state 0

#score game time
execute as @s[tag=setup-request] at @s run scoreboard objectives add game-time dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick game-time 0
execute as @s[tag=setup-request] at @s run scoreboard players set second game-time 0
execute as @s[tag=setup-request] at @s run scoreboard players set minute game-time 0

#score main bossbar animation
execute as @s[tag=setup-request] at @s run scoreboard objectives add bossbar-animation dummy
execute as @s[tag=setup-request] at @s run scoreboard players set main bossbar-animation 0
execute as @s[tag=setup-request] at @s run scoreboard players set ingame-stage-final bossbar-animation 0

#score invin bossbar
execute as @s[tag=setup-request] at @s run scoreboard objectives add invincibility-bossbar dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick invincibility-bossbar 0
execute as @s[tag=setup-request] at @s run scoreboard players set second invincibility-bossbar 0
execute as @s[tag=setup-request] at @s run scoreboard players set progress invincibility-bossbar 0

#score preload game
execute as @s[tag=setup-request] at @s run scoreboard objectives add preload-game dummy
execute as @s[tag=setup-request] at @s run scoreboard players set tick preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set second preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set minute preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set player-total preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set player-generated preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set loaded-asset preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set required-asset preload-game 0
execute as @s[tag=setup-request] at @s run scoreboard players set load-asset-stage preload-game 0

#score is chunk generated
execute as @s[tag=setup-request] at @s run scoreboard objectives add is-chunk-generated dummy

#score spectator spectate player
execute as @s[tag=setup-request] at @s run scoreboard objectives add spectator-spectate-player dummy

#score quit player
execute as @s[tag=setup-request] at @s run scoreboard objectives add player-leave minecraft.custom:leave_game

#score supply data
execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-state-landing dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-state-landed dummy

execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-coordinates-x dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-coordinates-y dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-coordinates-z dummy

execute as @s[tag=setup-request] at @s run scoreboard objectives add supply-queue dummy

#score optimization
# -server entities
execute as @s[tag=setup-request] at @s run scoreboard objectives add server-entities dummy

# -entities timeout
execute as @s[tag=setup-request] at @s run scoreboard objectives add entities-timeout dummy

#inventory controller
execute as @s[tag=setup-request] at @s run scoreboard objectives add inventory_controller.active_page dummy

#score cosmetics
execute as @s[tag=setup-request] at @s run scoreboard objectives add cosmetics.projectile_trails dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add cosmetics.gliding_effects dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add cosmetics.kill_effects dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add cosmetics.victory_dances dummy

#score game settings
execute as @s[tag=setup-request] at @s run scoreboard objectives add settings.game dummy

#score personal settings
# -spectator trail
execute as @s[tag=setup-request] at @s run scoreboard objectives add settings.personal.spectator_trails dummy

#score player uuid
execute as @s[tag=setup-request] at @s run scoreboard objectives add player-uuid dummy


#score mined ores
# -coal
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-coal minecraft.mined:minecraft.coal_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-coal 0
# -deepslate coal
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-coal minecraft.mined:minecraft.deepslate_coal_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-coal 0
# -copper
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-copper minecraft.mined:minecraft.copper_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-copper 0
# -deepslate copper
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-copper minecraft.mined:minecraft.deepslate_copper_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-copper 0
# -iron
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-iron minecraft.mined:minecraft.iron_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-iron 0
# -deepslate iron
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-iron minecraft.mined:minecraft.deepslate_iron_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-iron 0
# -lapis
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-lapis minecraft.mined:minecraft.lapis_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-lapis 0
# -deepslate lapis
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-lapis minecraft.mined:minecraft.deepslate_lapis_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-lapis 0
# -redstone
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-redstone minecraft.mined:minecraft.redstone_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-redstone 0
# -deepslate redstone
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-redstone minecraft.mined:minecraft.deepslate_redstone_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-redstone 0
# -gold
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-gold minecraft.mined:minecraft.gold_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-gold 0
# -deepslate gold
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-gold minecraft.mined:minecraft.deepslate_gold_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-gold 0
# -diamond
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-diamond minecraft.mined:minecraft.diamond_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-diamond 0
# -deepslate diamond
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-diamond minecraft.mined:minecraft.deepslate_diamond_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-diamond 0
# -emerald
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-emerald minecraft.mined:minecraft.emerald_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-emerald 0
# -deepslate emerald
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-deepslate-emerald minecraft.mined:minecraft.deepslate_emerald_ore
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-deepslate-emerald 0
# -raw copper block
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-raw-copper-block minecraft.mined:minecraft.raw_copper_block
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-raw-copper-block 0
# -raw iron block
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-raw-iron-block minecraft.mined:minecraft.raw_iron_block
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-raw-iron-block 0
# -raw gold block
execute as @s[tag=setup-request] at @s run scoreboard objectives add mined-ore-raw-gold-block minecraft.mined:minecraft.raw_gold_block
execute as @s[tag=setup-request] at @s run scoreboard players set @a mined-ore-raw-gold-block 0


#score custom (additional ingame event/feature)
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom dummy
execute as @s[tag=setup-request] at @s run scoreboard players set night-mode custom 0
execute as @s[tag=setup-request] at @s run scoreboard players set old-combat custom 0
execute as @s[tag=setup-request] at @s run scoreboard players set tiny custom 0
execute as @s[tag=setup-request] at @s run scoreboard players set gambling custom 0
execute as @s[tag=setup-request] at @s run scoreboard players set gun custom 0

#score custom gambling
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-emerald-count dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-is-dropped-book dropped:written_book
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-marker-owner-uuid dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-is-spinning dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-is-spinning-time dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-is-skip-animation dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-set-bet-amount dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-set-bet-amount-trigger trigger
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-bet-amount dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reel1 dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reel2 dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reel3 dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reel4 dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reel5 dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reward-3reels dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reward-4reels dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reward-5reels dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-reward-pool dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gambling-is-winning dummy

#score custom gun
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-accuracy dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-is-scoping dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-is-not-holding-gun dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-is-holding-gun dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-having-sniper-ammo dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-reloading dummy
execute as @s[tag=setup-request] at @s run scoreboard objectives add custom-gun-bullet-distance dummy

#team ingame
execute as @s[tag=setup-request] at @s run team add ingame
execute as @s[tag=setup-request] at @s run team modify ingame color red
execute as @s[tag=setup-request] at @s run team modify ingame seeFriendlyInvisibles false

#team spectator
execute as @s[tag=setup-request] at @s run team add spectator
execute as @s[tag=setup-request] at @s run team modify spectator color gray
execute as @s[tag=setup-request] at @s run team modify spectator seeFriendlyInvisibles true
execute as @s[tag=setup-request] at @s run team modify spectator collisionRule never

#team shop entity
execute as @s[tag=setup-request] at @s run team add shop-entity
execute as @s[tag=setup-request] at @s run team modify shop-entity collisionRule never

#team glowing color
# -aqua
execute as @s[tag=setup-request] at @s run team add glowing-color-aqua
execute as @s[tag=setup-request] at @s run team modify glowing-color-aqua color aqua
# -black
execute as @s[tag=setup-request] at @s run team add glowing-color-black
execute as @s[tag=setup-request] at @s run team modify glowing-color-black color black
# -gold
execute as @s[tag=setup-request] at @s run team add glowing-color-gold
execute as @s[tag=setup-request] at @s run team modify glowing-color-gold color gold
# -green
execute as @s[tag=setup-request] at @s run team add glowing-color-green
execute as @s[tag=setup-request] at @s run team modify glowing-color-green color green
# -light purple
execute as @s[tag=setup-request] at @s run team add glowing-color-light_purple
execute as @s[tag=setup-request] at @s run team modify glowing-color-light_purple color light_purple
# -red
execute as @s[tag=setup-request] at @s run team add glowing-color-red
execute as @s[tag=setup-request] at @s run team modify glowing-color-red color red
# -yellow
execute as @s[tag=setup-request] at @s run team add glowing-color-yellow
execute as @s[tag=setup-request] at @s run team modify glowing-color-yellow color yellow

#team supply state
execute as @s[tag=setup-request] at @s run team add supply-state-load
execute as @s[tag=setup-request] at @s run team add supply-state-prepare
execute as @s[tag=setup-request] at @s run team add supply-state-ready
execute as @s[tag=setup-request] at @s run team add supply-state-landing
execute as @s[tag=setup-request] at @s run team add supply-state-landed

execute as @s[tag=setup-request] at @s run team add supply-glowing-green
execute as @s[tag=setup-request] at @s run team modify supply-glowing-green color green

execute as @s[tag=setup-request] at @s run team add supply-glowing-yellow
execute as @s[tag=setup-request] at @s run team modify supply-glowing-yellow color yellow

execute as @s[tag=setup-request] at @s run team add supply-glowing-red
execute as @s[tag=setup-request] at @s run team modify supply-glowing-red color red

execute as @s[tag=setup-request] at @s run team add supply-glowing-light-purple
execute as @s[tag=setup-request] at @s run team modify supply-glowing-light-purple color light_purple

execute as @s[tag=setup-request] at @s run team add supply-glowing-aqua
execute as @s[tag=setup-request] at @s run team modify supply-glowing-aqua color aqua


#bossbar main
execute as @s[tag=setup-request] at @s run bossbar add main {"text":"ULTRA HARDCORE","color":"yellow","bold":true}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main color yellow
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main style notched_10
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main max 1
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main value 1
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main visible true
execute as @s[tag=setup-request] at @s run bossbar set minecraft:main players @a

#bossbar ingame
execute as @s[tag=setup-request] at @s run bossbar add ingame {"text":"World Border"}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:ingame color green
execute as @s[tag=setup-request] at @s run bossbar set minecraft:ingame max 6000
execute as @s[tag=setup-request] at @s run bossbar set minecraft:ingame value 6000
execute as @s[tag=setup-request] at @s run bossbar set minecraft:ingame visible false
execute as @s[tag=setup-request] at @s run bossbar set minecraft:ingame style notched_10

#bossbar invincibility
execute as @s[tag=setup-request] at @s run bossbar add invincibility {"text":"Invincibility"}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:invincibility color blue
execute as @s[tag=setup-request] at @s run bossbar set minecraft:invincibility max 1200
execute as @s[tag=setup-request] at @s run bossbar set minecraft:invincibility value 1200
execute as @s[tag=setup-request] at @s run bossbar set minecraft:invincibility visible false
execute as @s[tag=setup-request] at @s run bossbar set minecraft:invincibility style progress

#bossbar before game start (waiting for chunk to generate)
execute as @s[tag=setup-request] at @s run bossbar add gen-chunk {"text":"Waiting for chunks to generate..."}
execute as @s[tag=setup-request] at @s run bossbar set minecraft:gen-chunk color yellow
execute as @s[tag=setup-request] at @s run bossbar set minecraft:gen-chunk max 1
execute as @s[tag=setup-request] at @s run bossbar set minecraft:gen-chunk value 1
execute as @s[tag=setup-request] at @s run bossbar set minecraft:gen-chunk visible false
execute as @s[tag=setup-request] at @s run bossbar set minecraft:gen-chunk style progress


#worldborder
execute as @s[tag=setup-request] at @e[type=minecraft:armor_stand,name="map-center",limit=1] run worldborder center ~ ~
execute as @s[tag=setup-request] at @s run worldborder set 51
execute as @s[tag=setup-request] at @s run worldborder damage buffer 0
execute as @s[tag=setup-request] at @s run worldborder damage amount 1

#gamemode 2
execute as @s[tag=setup-request] at @s run gamemode adventure @a
execute as @s[tag=setup-request] at @s run defaultgamemode adventure

#gamerule
execute as @s[tag=setup-request] at @s run gamerule doImmediateRespawn true
execute as @s[tag=setup-request] at @s run gamerule doWeatherCycle false
execute as @s[tag=setup-request] at @s run gamerule doDaylightCycle false
execute as @s[tag=setup-request] at @s run gamerule doMobSpawning true
execute as @s[tag=setup-request] at @s run gamerule commandBlockOutput false
execute as @s[tag=setup-request] at @s run gamerule sendCommandFeedback false
execute as @s[tag=setup-request] at @s run gamerule keepInventory false
execute as @s[tag=setup-request] at @s run gamerule doTraderSpawning false
execute as @s[tag=setup-request] at @s run gamerule announceAdvancements false
execute as @s[tag=setup-request] at @s run gamerule naturalRegeneration false
execute as @s[tag=setup-request] at @s run gamerule spawnRadius 0
execute as @s[tag=setup-request] at @s run gamerule doMobSpawning false
execute as @s[tag=setup-request] at @s run gamerule playersNetherPortalDefaultDelay 2147483647
execute as @s[tag=setup-request] at @s run gamerule playersNetherPortalCreativeDelay 2147483647
execute as @s[tag=setup-request] at @s run gamerule doLimitedCrafting true

#title times
execute as @s[tag=setup-request] at @s run title @a times 0 100 20

#time set
execute as @s[tag=setup-request] at @s run time set day

#difficulty set
execute as @s[tag=setup-request] at @s run difficulty normal

#world spawn
execute as @s[tag=setup-request] at @s run setworldspawn ~ ~ ~

#setblock command_block with function run
#execute as @s[tag=setup-request] at @s run setblock ~ ~-2 ~ repeating_command_block{Command:"function system:run",auto:true}

#apply admin tag
execute as @s[tag=setup-request] at @s run tag @s add admin

#permission remove
execute as @s[tag=setup-request] at @s run tellraw @s {"text":"\nSetup complete","color":"green"}
execute as @s[tag=setup-request] at @s run tag @s remove setup-random-request
execute as @s[tag=setup-request] at @s run tag @s remove setup-request