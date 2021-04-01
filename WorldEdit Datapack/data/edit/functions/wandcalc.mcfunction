execute if score @s pos1x < @s pos2x run scoreboard players set mx wandcalc 1
execute if score @s pos1x > @s pos2x run scoreboard players set mx wandcalc -1
scoreboard players operation x wandcalc = @s pos1x
scoreboard players operation @s pos2x += mx wandcalc
execute if score @s pos1y < @s pos2y run scoreboard players set my wandcalc 1
execute if score @s pos1y > @s pos2y run scoreboard players set my wandcalc -1
scoreboard players operation y wandcalc = @s pos1y
execute if score @s pos1z < @s pos2z run scoreboard players set mz wandcalc 1
execute if score @s pos1z > @s pos2z run scoreboard players set mz wandcalc -1
scoreboard players operation z wandcalc = @s pos1z
function edit:c/mx