execute store result score @s shardcount run clear @s slime_ball{display:{Name:'{"text":"Slime Shard","italic":false}'}} 0
execute store result score @s slimeballcount run clear @s slime_ball 0
scoreboard players operation @s slimeballcount -= @s shardcount