tag @a remove tpa
tag @s add tpa
scoreboard players set t ptrack 0
execute as @a if score @s[tag=!tpa] ptrack = @p[tag=tpa] tpa run function tp:tpa/ask

execute if score t ptrack matches 0 run tellraw @s [{"score":{"name":"@s","objective":"tpa"},"color":"dark_red"},{"text":" is not a valid player number or that player is not online!\ndo '/trigger tpla' to show everyone's player numbers!"}]