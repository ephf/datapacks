advancement revoke @s only boss:crafted/slime_pet
recipe take @s boss:slime_pet
scoreboard players add @s removebook 1
tellraw @s [{"text":"Crafting failed! You can't use a slime spawn egg!","color":"dark_red"}]
give @s slime_spawn_egg