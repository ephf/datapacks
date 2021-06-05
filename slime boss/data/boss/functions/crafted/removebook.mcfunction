execute store success score @s removedbook run clear @s knowledge_book 1
execute if score @s removedbook matches 1 run scoreboard players remove @s removebook 1
execute store result score @s kbcount run clear @s knowledge_book 0
execute if score @s removebook matches 1.. if score @s kbcount matches 1.. run function boss:crafted/removebook