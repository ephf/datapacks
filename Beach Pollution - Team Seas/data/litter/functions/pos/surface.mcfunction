tag @s add litter.spawned_item
scoreboard players set x litter.main 0
scoreboard players set nx litter.main 0
scoreboard players set y litter.main 0
scoreboard players set ny litter.main 0
execute unless block ~ ~ ~ water positioned ~ ~-1 ~ run function #litter:to_land
execute if block ~ ~ ~ water positioned ~ ~1 ~ run function litter:pos/surface