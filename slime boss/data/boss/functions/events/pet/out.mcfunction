scoreboard players set pettemp slimeboss 0
execute at @e[type=slime,tag=slimepet] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run scoreboard players set pettemp slimeboss 1
execute if score pettemp slimeboss matches 0 run summon slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Tags:["slimepet"],CustomName:'{"text": "Baby Slime"}'}
execute if score pettemp slimeboss matches 0 run scoreboard players operation @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack
scoreboard players set pettemp slimeboss 0
execute at @e[type=slime,tag=slimepet,distance=..15] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run scoreboard players set pettemp slimeboss 1
execute if score pettemp slimeboss matches 0 at @e[type=slime,tag=slimepet] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run data modify entity @e[type=slime,limit=1,sort=nearest] Pos set from entity @s Pos