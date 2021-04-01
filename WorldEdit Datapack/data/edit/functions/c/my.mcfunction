execute unless score y wandcalc = @s pos2y run function edit:c/s/my
execute unless score y wandcalc = @s pos2y run scoreboard players operation y wandcalc += my wandcalc
execute if score y wandcalc = @s pos2y run function edit:set
execute unless score y wandcalc = @s pos2y run function edit:c/my