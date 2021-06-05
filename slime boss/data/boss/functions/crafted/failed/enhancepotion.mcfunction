advancement revoke @s only boss:crafted/enhancepotion
recipe take @s boss:enhancepotion
scoreboard players add @s removebook 1
tellraw @s [{"text":"Crafting failed! You can't use slimeballs!","color":"dark_red"}]
give @s slime_ball 8
give @s glass_bottle 1