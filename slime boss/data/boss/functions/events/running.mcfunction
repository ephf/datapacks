effect give @s glowing 1 0 true
execute store result score @s shealth run data get entity @s Health
execute if score @s shealth < @s sphealth run scoreboard players operation temp slimeboss = @s sphealth
execute if score @s shealth < @s sphealth run scoreboard players operation temp slimeboss -= @s shealth
execute if score @s shealth < @s sphealth run scoreboard players operation health slimeboss -= temp slimeboss
execute if score @s shealth < @s sphealth store result bossbar slimeboss value run scoreboard players get health slimeboss
scoreboard players operation @s sphealth = @s shealth