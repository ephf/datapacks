## Giving Discriminator

execute as @a[tag=!dsave] run scoreboard players set @s deathy -2000
tag @a add dsave

## Enableing Players to Use Commands / Trigger Scoreboards

scoreboard players enable @a deathtp
scoreboard players enable @a dtp

## When Player Dies, Create Deathsave

execute as @a[scores={isdead=1..}] run function deathtp:deathsave

## Running Commands unless Discriminator is True

execute as @a[scores={deathtp=1..}] unless score @s deathy matches -2000 run function deathtp:run
execute as @a[scores={dtp=1..}] unless score @s deathy matches -2000 run function deathtp:run
execute as @a[scores={deathtp=1..}] if score @s deathy matches -2000 run tellraw @s [{"text":"You have not died yet","color":"dark_red"}]
execute as @a[scores={dtp=1..}] if score @s deathy matches -2000 run tellraw @s [{"text":"You have not died yet","color":"dark_red"}]
scoreboard players set @a deathtp 0
scoreboard players set @a dtp 0