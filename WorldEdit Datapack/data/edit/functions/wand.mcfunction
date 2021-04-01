execute unless score @s pos1x matches -2147483647.. run tellraw @s [{"text":"You haven't set your first position!","color":"dark_red"}]
execute unless score @s pos2x matches -2147483647.. run tellraw @s [{"text":"You haven't set your second position!","color":"dark_red"}]
execute if score @s pos1x matches -2147483647.. if score @s pos2x matches -2147483647.. run function edit:wandcalc