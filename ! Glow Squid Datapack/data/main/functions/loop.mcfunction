## Make sure players are on the 'air' scoreboard ##
scoreboard players add @a air 0

## Summon glow squid if it doesn't already exist ##
execute unless score @p health matches 0 unless entity @e[type=glow_squid,limit=1,tag=tped] run execute at @p run summon glow_squid ~ ~ ~ {Invulnerable:1,Tags:['tped']}

## Fills / Changes the ui (air bar) ##
execute as @a run function main:fill

## Timer for air reduction (1 second / 20 ticks) ##
function main:air_timer

## Player effects ##
function main:effects

## When player drinks water / potion ##
execute as @a[scores={drink=1}] run scoreboard players set @s air 9
scoreboard players set @a drink 0