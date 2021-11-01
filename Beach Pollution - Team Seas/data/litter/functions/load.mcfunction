scoreboard objectives add litter.main dummy
scoreboard objectives add litter.amount trigger
scoreboard objectives add litter.toggle_op trigger
execute unless score litter_amount litter.main matches -2147483648..2147483647 run scoreboard players set litter_amount litter.main 1