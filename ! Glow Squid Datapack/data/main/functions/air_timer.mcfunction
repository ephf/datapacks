## Timer for air reduction (1 second / 20 ticks) ##
scoreboard players add time air 1
execute if score time air matches 30 as @a at @s unless block ~ ~ ~ water unless score @s air matches 0 run scoreboard players remove @s air 1
execute if score time air matches 30 run scoreboard players set time air 0
execute as @a at @s if block ~ ~ ~ water unless score @s air matches 9 run scoreboard players add @s air 1
execute as @a if score @s air matches 0 run effect give @s wither 1 1 true