summon marker ~ ~ ~ {Tags:["litter.created_item"]}
spreadplayers ~ ~ 3 1 false @e[type=marker,tag=litter.created_item]
scoreboard players operation amount_temp litter.main = litter_amount litter.main
function litter:create_amount
kill @e[type=marker,tag=litter.created_item]