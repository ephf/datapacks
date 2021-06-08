scoreboard players set pettemp slimeboss 0
execute at @e[type=slime,tag=slimepet] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run scoreboard players set pettemp slimeboss 1
execute if score pettemp slimeboss matches 0 if score resource slimeboss matches 0 run summon slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Tags:["slimepet"],CustomName:'{"text": "Baby Slime"}'}
execute if score pettemp slimeboss matches 0 if score resource slimeboss matches 1 run summon slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Tags:["slimepet"],CustomName:'{"text": "Baby Slime"}',Passengers:[{id:"minecraft:armor_stand",Small:1b,Tags:["slimepet_texture"],Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:1000}}]}]}
execute if score pettemp slimeboss matches 0 run scoreboard players operation @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack
scoreboard players set pettemp slimeboss 0
execute at @e[type=slime,tag=slimepet,distance=..15] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run scoreboard players set pettemp slimeboss 1
execute if score pettemp slimeboss matches 0 at @e[type=slime,tag=slimepet] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run kill @e[type=slime,limit=1,sort=nearest]
execute if score resource slimeboss matches 1 run function boss:resource/events/pet/out