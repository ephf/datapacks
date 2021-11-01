scoreboard players enable @a litter.amount
scoreboard players enable @a litter.toggle_op
execute as @e[type=#axolotl_hunt_targets,tag=!litter.spawned_item] at @s run function litter:pos/surface
execute as @a[scores={litter.amount=1..}] run scoreboard players operation litter_amount litter.main = @s litter.amount
execute as @a[scores={litter.toggle_op=2..}] if score op litter.main matches 1 run scoreboard players set op litter.main 0
execute as @a[scores={litter.toggle_op=1}] unless score op litter.main matches 1 run scoreboard players set op litter.main 1
scoreboard players set @a litter.amount 0
execute as @a[scores={litter.toggle_op=2..}] run scoreboard players set @a litter.toggle_op 0