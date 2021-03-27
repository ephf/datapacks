# uhc startup

kill @e[type=!player]
kill @e[type=item]
time set day
scoreboard players set @a dead 0
scoreboard players set @a kills 0
tag @s remove struck
gamemode survival @a
worldborder set 4000 0
scoreboard players set uhcstarted bools 1
scoreboard objectives setdisplay sidebar sidebar
team join alive @a
effect give @a fire_resistance 600
effect give @a health_boost 1200 4 true
gamerule fallDamage false
execute as @a run spreadplayers 0 0 2000 2000 true @s
execute as @a at @s run tp @s ~ 150 ~
clear @a
give @a stone_sword
give @a stone_axe
give @a stone_pickaxe
give @a stone_shovel
give @a apple 6