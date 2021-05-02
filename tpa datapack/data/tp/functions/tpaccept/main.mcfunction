tag @a remove tpaccept
tag @s add tpaccept
scoreboard players set t ptrack 0
execute as @a at @s if score @s telt = @p[tag=tpaccept] ptrack run function tp:tpaccept/tp

execute if score t ptrack matches 0 as @a if score @s ptrack = @p[tag=tpaccept] tpaccept run tellraw @p[tag=tpaccept] [{"text":"you don't have a tp request from ","color":"dark_red"},{"selector":"@s","color":"dark_red"}]
execute if score t ptrack matches 0 as @a if score @s ptrack = @p[tag=tpaccept] tpaccept run scoreboard players set t ptrack 1
execute if score t ptrack matches 0 run tellraw @s [{"score":{"name":"@s","objective":"tpaccept"},"color":"dark_red"},{"text":" is not a valid player number or that player is not online!\ndo '/trigger tpla' to show everyone's player numbers!"}]