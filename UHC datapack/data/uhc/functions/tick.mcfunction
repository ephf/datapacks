# enable /trigger start

scoreboard players enable @a start

# starting game when triggered

execute as @a if score @s start matches 1.. if score uhcstarted bools matches 1 run tellraw @s [{"text":"The UHC has already started!","color":"dark_red"}]
execute as @a if score @s start matches 1.. if score uhcstarted bools matches 0 run function uhc:startup
scoreboard players set @a start 0

execute if score uhcstarted bools matches 1 run function uhc:running