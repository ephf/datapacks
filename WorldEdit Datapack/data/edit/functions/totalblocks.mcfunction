

scoreboard players operation dx wandcalc = @s pos1x
execute if score dx wandcalc matches ..0 run scoreboard players operation dx wandcalc *= none wandcalc
scoreboard players operation dxs wandcalc = @s pos2x
execute if score dxs wandcalc matches ..0 run scoreboard players operation dxs wandcalc *= none wandcalc
scoreboard players operation dx wandcalc -= dxs wandcalc
execute if score dx wandcalc matches ..0 run scoreboard players operation dx wandcalc *= none wandcalc
scoreboard players operation dx wandcalc += one wandcalc

scoreboard players operation dy wandcalc = @s pos1y
execute if score dy wandcalc matches ..0 run scoreboard players operation dy wandcalc *= none wandcalc
scoreboard players operation dys wandcalc = @s pos2y
execute if score dys wandcalc matches ..0 run scoreboard players operation dys wandcalc *= none wandcalc
scoreboard players operation dy wandcalc -= dys wandcalc
execute if score dy wandcalc matches ..0 run scoreboard players operation dy wandcalc *= none wandcalc
scoreboard players operation dy wandcalc += one wandcalc

scoreboard players operation dz wandcalc = @s pos1z
execute if score dz wandcalc matches ..0 run scoreboard players operation dz wandcalc *= none wandcalc
scoreboard players operation dzs wandcalc = @s pos2z
execute if score dzs wandcalc matches ..0 run scoreboard players operation dzs wandcalc *= none wandcalc
scoreboard players operation dz wandcalc -= dzs wandcalc
execute if score dz wandcalc matches ..0 run scoreboard players operation dz wandcalc *= none wandcalc
scoreboard players operation dz wandcalc += one wandcalc

scoreboard players operation blocks wandcalc = dx wandcalc
scoreboard players operation blocks wandcalc *= dy wandcalc
scoreboard players operation blocks wandcalc *= dz wandcalc