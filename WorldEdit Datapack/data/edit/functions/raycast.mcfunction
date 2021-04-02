execute unless block ~ ~ ~ air unless block ~ ~ ~ water positioned ^ ^ ^0.1 run summon armor_stand ~ ~ ~ {Tags:['ray'],Marker:1,Invisible:1,Silent:1}
execute unless block ~ ~ ~ air unless block ~ ~ ~ water positioned ^ ^ ^0.1 at @e[type=armor_stand,tag=ray] run function edit:foundblock 
execute if block ~ ~ ~ air positioned ^ ^ ^0.1 run function edit:raycast
execute if block ~ ~ ~ water positioned ^ ^ ^0.1 run function edit:raycast