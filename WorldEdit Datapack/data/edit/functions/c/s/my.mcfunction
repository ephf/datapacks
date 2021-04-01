execute at @e[type=armor_stand,tag=mywi] run summon armor_stand ~ ~ ~ {Tags:['omywi','wi'],Invisible:1,Marker:1}
tag @e remove mywi
tag @e[tag=omywi] add mywi
scoreboard players operation @e[tag=omywi] ywi = y wandcalc
scoreboard players operation @e[tag=omywi] ywi += my wandcalc
tag @e remove omywi