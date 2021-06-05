advancement revoke @s only boss:crafted/compact_slimeshard
recipe take @s boss:compact_slimeshard
scoreboard players add @s removebook 1
tellraw @s [{"text":"Crafting failed! You can't use slimeballs!","color":"dark_red"}]
give @s slime_ball 4