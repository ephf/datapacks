advancement revoke @s only boss:crafted/slimeshard
recipe take @s boss:slimeshard
scoreboard players add @s removebook 1
tellraw @s [{"text":"Crafting failed! You can't use an emerald!","color":"dark_red"}]
give @s emerald