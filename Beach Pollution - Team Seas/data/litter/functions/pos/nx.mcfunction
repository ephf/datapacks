scoreboard players add nx litter.main 1
execute unless block ~ ~ ~ water positioned ~ ~1 ~ run function litter:create
execute if block ~ ~ ~ water positioned ~-1 ~ ~ if score nx litter.main matches ..20 run function litter:pos/nx