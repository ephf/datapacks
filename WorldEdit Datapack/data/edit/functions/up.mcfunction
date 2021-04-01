execute at @s run summon armor_stand ~ ~ ~ {Tags:['up'],Invisible:1}
execute store result score y upy run data get entity @s Pos[1]
scoreboard players operation y upy += @s up
execute store result entity @e[type=armor_stand,tag=up,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get y upy
execute at @e[type=armor_stand,tag=up,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[type=armor_stand,tag=up]
execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ glass