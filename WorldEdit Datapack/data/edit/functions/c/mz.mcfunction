execute unless score z wandcalc = @s pos2z run function edit:c/s/mz
execute unless score z wandcalc = @s pos2z run scoreboard players operation z wandcalc += mz wandcalc
execute if score z wandcalc = @s pos2z run function edit:c/my
execute unless score z wandcalc = @s pos2z run function edit:c/mz