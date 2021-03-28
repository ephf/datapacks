# uhc is running

enchant @a efficiency 3
scoreboard players add ticks graceperiod 1
execute if score ticks graceperiod matches 20 run scoreboard players add seconds graceperiod 1
execute if score ticks graceperiod matches 20 run scoreboard players set ticks graceperiod 0
execute if score seconds graceperiod matches 60 run scoreboard players add minutes graceperiod 1
execute if score seconds graceperiod matches 60 run scoreboard players set seconds graceperiod 0
execute if score minutes graceperiod matches 10 run scoreboard players set graceperiod bools 0
scoreboard players remove falltime graceperiod 1

## no AI

execute at @a as @e[type=!player,distance=..100] run data modify entity @s NoAI set value 1

## falltime

execute if score falltime graceperiod matches ..0 run gamerule fallDamage true
execute if score falltime graceperiod matches 1.. run effect give @a instant_health 1 1 true
execute if score falltime graceperiod matches 1.. run effect give @a saturation 1 1 true

## auto smelt

execute as @e[type=item] if data entity @s Item{id:"minecraft:iron_ore"} run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute as @e[type=item] if data entity @s Item{id:"minecraft:gold_ore"} run data modify entity @s Item.id set value "minecraft:gold_ingot"

## auto flint

execute as @e[type=item] if data entity @s Item{id:"minecraft:gravel"} run data modify entity @s Item.id set value "minecraft:flint"

## vein miner

execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~ ~1 ~ iron_ore run setblock ~ ~1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~ ~-1 ~ iron_ore run setblock ~ ~-1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~ ~ ~1 iron_ore run setblock ~ ~ ~1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~ ~ ~-1 iron_ore run setblock ~ ~ ~-1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~1 ~ ~ iron_ore run setblock ~1 ~ ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:iron_ingot"} unless data entity @s Thrower if block ~-1 ~ ~ iron_ore run setblock ~-1 ~ ~ air destroy

execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~ ~1 ~ coal_ore run setblock ~ ~1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~ ~-1 ~ coal_ore run setblock ~ ~-1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~ ~ ~1 coal_ore run setblock ~ ~ ~1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~ ~ ~-1 coal_ore run setblock ~ ~ ~-1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~1 ~ ~ coal_ore run setblock ~1 ~ ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:coal"} unless data entity @s Thrower if block ~-1 ~ ~ coal_ore run setblock ~-1 ~ ~ air destroy

execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~ ~1 ~ gold_ore run setblock ~ ~1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~ ~-1 ~ gold_ore run setblock ~ ~-1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~ ~ ~1 gold_ore run setblock ~ ~ ~1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~ ~ ~-1 gold_ore run setblock ~ ~ ~-1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~1 ~ ~ gold_ore run setblock ~1 ~ ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:gold_ingot"} unless data entity @s Thrower if block ~-1 ~ ~ gold_ore run setblock ~-1 ~ ~ air destroy

execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~ ~1 ~ redstone_ore run setblock ~ ~1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~ ~-1 ~ redstone_ore run setblock ~ ~-1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~ ~ ~1 redstone_ore run setblock ~ ~ ~1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~ ~ ~-1 redstone_ore run setblock ~ ~ ~-1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~1 ~ ~ redstone_ore run setblock ~1 ~ ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:redstone"} unless data entity @s Thrower if block ~-1 ~ ~ redstone_ore run setblock ~-1 ~ ~ air destroy

execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~ ~1 ~ lapis_ore run setblock ~ ~1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~ ~-1 ~ lapis_ore run setblock ~ ~-1 ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~ ~ ~1 lapis_ore run setblock ~ ~ ~1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~ ~ ~-1 lapis_ore run setblock ~ ~ ~-1 air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~1 ~ ~ lapis_ore run setblock ~1 ~ ~ air destroy
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:lapis_lazuli"} unless data entity @s Thrower if block ~-1 ~ ~ lapis_ore run setblock ~-1 ~ ~ air destroy

## dead people

execute at @a[tag=!struck,scores={dead=1..}] run summon lightning_bolt ~ 0 ~
execute as @a[tag=!struck,scores={dead=1..}] at @a run playsound entity.lightning_bolt.thunder block @s
execute as @a[tag=!struck,scores={dead=1..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1,tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}}
execute as @a[tag=!struck,scores={dead=1..}] run tag @s add struck
execute as @a[scores={dead=1..}] run gamemode spectator
execute as @a[scores={dead=1..}] run team join dead

## player heads

execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=ghead,distance=..1] if data entity @e[type=armor_stand,tag=ghead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}}] run effect give @s regeneration 5 1
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=ghead,distance=..1] if data entity @e[type=armor_stand,tag=ghead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}}] run effect give @s speed 25 0
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=ghead,distance=..1] if data entity @e[type=armor_stand,tag=ghead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}}] run effect give @s absorption 30 1
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=ghead,distance=..1] if data entity @e[type=armor_stand,tag=ghead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}}] run playsound minecraft:entity.player.burp block @s
execute as @a at @s positioned ^ ^1 ^1 as @e[type=armor_stand,tag=ghead,distance=..1] if data entity @s ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}}] run kill @s
execute as @a at @s positioned ^ ^1 ^1 unless data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}} run kill @e[type=armor_stand,tag=ghead,distance=..1.5]
execute as @a at @s positioned ^ ^1 ^1 if data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}} unless entity @e[type=armor_stand,tag=ghead,distance=..1.5] run summon armor_stand ~ ~ ~ {Tags:['ghead'],Invisible:1,Invulnerable:1}
execute as @a at @s positioned ^ ^1 ^1 if data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Golden Head","color":"gold","italic":false}'}}} run tp @e[type=armor_stand,tag=ghead,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=phead,distance=..1] if data entity @e[type=armor_stand,tag=phead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}] run effect give @s regeneration 5 0
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=phead,distance=..1] if data entity @e[type=armor_stand,tag=phead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}] run effect give @s speed 15 0
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=phead,distance=..1] if data entity @e[type=armor_stand,tag=phead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}] run effect give @s absorption 25 0
execute as @a at @s positioned ^ ^1 ^1 if entity @e[type=armor_stand,tag=phead,distance=..1] if data entity @e[type=armor_stand,tag=phead,distance=..1,limit=1] ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}] run playsound minecraft:entity.player.burp block @s
execute as @a at @s positioned ^ ^1 ^1 as @e[type=armor_stand,tag=phead,distance=..1] if data entity @s ArmorItems[{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}}] run kill @s
execute as @a at @s positioned ^ ^1 ^1 unless data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}} run kill @e[type=armor_stand,tag=phead,distance=..1.5]
execute as @a at @s positioned ^ ^1 ^1 if data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}} unless entity @e[type=armor_stand,tag=phead,distance=..1.5] run summon armor_stand ~ ~ ~ {Tags:['phead'],Invisible:1,Invulnerable:1}
execute as @a at @s positioned ^ ^1 ^1 if data entity @s SelectedItem{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Player Head","color":"red","italic":false}'}}} run tp @e[type=armor_stand,tag=phead,limit=1,sort=nearest] ~ ~ ~ facing entity @s

clear @a knowledge_book

## kills

execute as @a run title @s actionbar [{"text":"Kills: ","color":"red"},{"score":{"name":"@s","objective":"kills"},"color": "red"}]

## time set on scoreboard

function uhc:timeset
function uhc:pvptimeset

## player count on scoreboard

scoreboard players set count players 0
#execute as @a[team=alive] run scoreboard players add count players 1
function uhc:playercount

execute if score count players matches 1 at @a[team=alive] run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320]}]}}}}
execute if score count players matches 1 if score endingticks graceperiod matches 100 at @a run playsound minecraft:entity.firework_rocket.launch block @a
execute if score count players matches 1 if score endingticks graceperiod matches 100 run tellraw @a [{"text":"Game Over! ","color":"green"},{"text":"Winner: ","color":"gold"},{"selector":"@a[team=alive]","color":"red"}]
execute if score count players matches 1 run scoreboard players remove endingticks graceperiod 1
execute if score endingticks graceperiod matches ..0 run reload

## graceperiod ending

execute if score minutes graceperiod matches 10 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 run tellraw @a [{"text":"Grace Period has ended! ","color":"gold"},{"text":"PVP is now enabled!","color":"red"},{"text":" The border is shrinking!","color":"gold"}]
execute if score minutes graceperiod matches 10 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 at @a run playsound minecraft:entity.ender_dragon.growl block @a
execute if score minutes graceperiod matches 10.. run worldborder set 20 600
execute if score minutes graceperiod matches 10.. run team modify alive friendlyFire true

### death match

execute if score minutes graceperiod matches 20 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 run tellraw @a [{"text":"Death Match!","color":"dark_red"}]
execute if score minutes graceperiod matches 20 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 at @a run playsound minecraft:entity.ender_dragon.growl block @a
execute if score minutes graceperiod matches 20 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 as @a run spreadplayers 0 0 5 5 true @s
execute if score minutes graceperiod matches 20 if score seconds graceperiod matches 0 if score ticks graceperiod matches 0 run worldborder set 15 0