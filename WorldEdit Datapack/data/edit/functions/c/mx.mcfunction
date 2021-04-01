execute at @s run summon armor_stand ~ ~ ~ {Tags:['newwi','wi','mzwi','mywi'],Invisible:1,Marker:1}
execute store result entity @e[type=armor_stand,tag=newwi,limit=1] Pos[0] double 1 run scoreboard players get x wandcalc
execute store result entity @e[type=armor_stand,tag=newwi,limit=1] Pos[2] double 1 run scoreboard players get @s pos1z
scoreboard players operation @e[type=armor_stand,tag=newwi] ywi = y wandcalc
tag @e[type=armor_stand,tag=newwi] remove newwi
execute unless score x wandcalc = @s pos2x run scoreboard players operation x wandcalc += mx wandcalc
execute if score x wandcalc = @s pos2x run function edit:c/mz
execute unless score x wandcalc = @s pos2x run function edit:c/mx