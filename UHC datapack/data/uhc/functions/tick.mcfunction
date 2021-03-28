# enable /triggers

scoreboard players enable @a start
scoreboard players enable @a end

# starting game when triggered

execute as @a[scores={start=1..},tag=!uhc] run tellraw @s [{"text":"You aren't aloud to start UHCs!","color":"dark_red"}]

execute as @a[tag=uhc] if score @s start matches 1.. if score uhcstarted bools matches 1 run tellraw @s [{"text":"The UHC has already started!","color":"dark_red"}]
execute as @a[tag=uhc] if score @s start matches 1.. if score uhcstarted bools matches 0 run function uhc:startup
scoreboard players set @a start 0

execute if score uhcstarted bools matches 1 run function uhc:running

# ending game when triggered

execute as @a[scores={end=1..},tag=!uhc] run tellraw @s [{"text":"You aren't aloud to end UHCs!","color":"dark_red"}]

execute as @a[scores={end=1..},tag=uhc] if score uhcstarted bools matches 0 run tellraw @s [{"text":"There is no UHC in progress!","color":"dark_red"}]
execute as @a[scores={end=1..},tag=uhc] if score uhcstarted bools matches 1 run tellraw @s [{"text":"The UHC was ended by ","color":"gold"},{"selector":"@s","color":"red"}]
execute as @a[scores={end=1..},tag=uhc] if score uhcstarted bools matches 1 run gamemode spectator @a
execute as @a[scores={end=1..},tag=uhc] if score uhcstarted bools matches 1 run reload
scoreboard players set @a end 0