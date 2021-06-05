advancement revoke @s only boss:crafted/slime_pet
recipe take @s boss:slime_pet
scoreboard players add @s removebook 1
tellraw @s [{"text":"Crafting failed! You can't use emeralds!","color":"dark_red"}]
give @s emerald 4