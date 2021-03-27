# scoreboards

scoreboard objectives add start trigger
scoreboard objectives add bools dummy
scoreboard players set uhcstarted bools 0
scoreboard players set graceperiod bools 1
scoreboard objectives add graceperiod dummy
scoreboard players set falltime graceperiod 200
scoreboard players set ticks graceperiod 0
scoreboard players set seconds graceperiod 0
scoreboard players set minutes graceperiod 0
scoreboard players set endingticks graceperiod 100
scoreboard objectives add kills playerKillCount
scoreboard objectives add dead deathCount

## sidebar

scoreboard objectives add sidebar dummy [{"text":"UHC!","bold":true,"color":"gold"}]
scoreboard players set Time sidebar 9
scoreboard players set PVP sidebar 8
scoreboard players set §f sidebar 7
scoreboard players set Players sidebar 6
scoreboard objectives add players dummy

# teams

team add alive
team modify alive prefix [{"text":"ALIVE ","color":"green","bold":true}]
team modify alive friendlyFire false
team add dead
team modify dead prefix [{"text":"DEAD ","color":"dark_red","bold":true}]

## sidebar

team add timeleft
team modify timeleft suffix [{"text":" Left: ","color":"gold"},{"text": "Not Started","color": "dark_red"}]
team modify timeleft color gold
team join timeleft Time

team add playersleft
team modify playersleft suffix [{"text":" Left: ","color":"gold"},{"text": "0/100","color": "blue"}]
team modify playersleft color gold
team join playersleft Players

team add pvptimeleft
team modify pvptimeleft suffix [{"text":" Disabled!","color":"gold"}]
team modify pvptimeleft color gold
team join pvptimeleft PVP

# gamrules

gamerule naturalRegeneration false