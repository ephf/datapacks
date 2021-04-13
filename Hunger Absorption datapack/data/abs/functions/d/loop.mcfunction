scoreboard players set h hungerAbsorption 0
scoreboard players add s hungerAbsorption 1
execute if score @s hungerAbsorption = s hungerAbsorption run data modify storage ha display prepend value '{"text":"\\ueff2\\uf000"}'
execute if score @s hungerAbsorption = s hungerAbsorption run scoreboard players set h hungerAbsorption 1
scoreboard players remove s hungerAbsorption 1
execute if score h hungerAbsorption matches 0 if score @s hungerAbsorption > s hungerAbsorption run data modify storage ha display prepend value '{"text":"\\ueff1\\uf000"}'
execute if score h hungerAbsorption matches 0 if score @s hungerAbsorption <= s hungerAbsorption run data modify storage ha display prepend value '{"text":"\\uf001\\uf000"}'
scoreboard players add s hungerAbsorption 2
execute unless score s hungerAbsorption matches ..19 run function abs:d/show
execute if score s hungerAbsorption matches ..19 run function abs:d/loop