execute if score @s tpty matches 1 at @p[tag=tpaccept] run tp @s ~ ~ ~
execute if score @s tpty matches 1 run tellraw @s [{"text":"successfully teleported to ","color":"gold"},{"selector":"@p[tag=tpaccept]","color":"red"}]
execute if score @s tpty matches 1 run tellraw @p[tag=tpaccept] [{"selector":"@s","color":"red"},{"text":" has successfully teleported to you","color":"gold"}]

scoreboard players set @s telt 0
scoreboard players set @s tpt -1

# 1 - tpa
# 2 - tpahere

scoreboard players set t ptrack 1