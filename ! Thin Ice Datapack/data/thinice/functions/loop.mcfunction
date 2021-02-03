## Remove Knowledge Book From All Players ##
clear @a knowledge_book
execute as @e[type=item] if data entity @s Item{id:"minecraft:knowledge_book"} run kill @s

## Setting Ice and Removing it ##
function thinice:fill