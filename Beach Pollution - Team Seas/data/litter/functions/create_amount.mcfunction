execute unless score op litter.main matches 1 at @e[type=marker,tag=litter.created_item] run loot spawn ~ ~ ~ loot litter:items
execute if score op litter.main matches 1 at @e[type=marker,tag=litter.created_item] run loot spawn ~ ~ ~ loot litter:op_items
scoreboard players remove amount_temp litter.main 1
execute if score amount_temp litter.main matches 1.. run function litter:create_amount