execute at @e[type=armor_stand,tag=mzwi] if score mz wandcalc matches -1 run summon armor_stand ~ ~ ~-1 {Tags:['omzwi','wi','mywi'],Invisible:1,Marker:1}
execute at @e[type=armor_stand,tag=mzwi] if score mz wandcalc matches 1 run summon armor_stand ~ ~ ~1 {Tags:['omzwi','wi','mywi'],Invisible:1,Marker:1}
tag @e remove mzwi
tag @e[tag=omzwi] add mzwi
scoreboard players operation @e[tag=omzwi] ywi = y wandcalc
tag @e remove omzwi