scoreboard players add y litter.main 1
execute unless block ~ ~ ~ water positioned ~ ~1 ~ run function litter:create
execute if block ~ ~ ~ water positioned ~ ~ ~1 if score y litter.main matches ..20 run function litter:pos/y