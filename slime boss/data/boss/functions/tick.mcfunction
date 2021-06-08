execute as @a unless score @s ptrack matches -2147483647..2147483647 run function boss:events/new_player

execute as @e[type=slime,tag=bosssummon] run scoreboard players set startup slimeboss 1
execute as @e[type=slime,tag=bosssummon] run tag @s remove boss

execute if score startup slimeboss matches 1 run function boss:events/startup
execute if score running slimeboss matches 1 as @e[type=slime] run function boss:events/running
scoreboard players add timer slimeboss 1
execute if score timer slimeboss matches 2000.. if score running slimeboss matches 1 at @e[type=slime] run summon slime ~ ~ ~ {Size:2,CustomName:'{"text":"Slime Minion"}'}
execute if score timer slimeboss matches 2000.. if score running slimeboss matches 1 run scoreboard players set timer slimeboss 0

execute as @a[scores={skill=1..}] run scoreboard players remove health slimeboss 10
scoreboard players set @a skill 0

scoreboard players add downtime slimeboss 1
execute if entity @e[type=slime] run scoreboard players set downtime slimeboss 0
execute if score running slimeboss matches 1 if score downtime slimeboss matches 40.. run function boss:events/end
execute if score health slimeboss matches ..0 if score running slimeboss matches 1 run function boss:events/end

execute as @a store result score @s shardcounta run clear @s slime_ball{display:{Name:'{"text":"Slime Shard","italic":false}'},Enchantments:[{}]} 0
execute as @a store result score @s slimeballcounta run clear @s slime_ball 0
execute as @a run scoreboard players operation @s slimeballcounta -= @s shardcounta

execute as @a store result score @s compactshardcnta run clear @s emerald{Enchantments:[{}],display:{Name:'{"text": "Compact Slime Shard", "italic": false}'}} 0
execute as @a store result score @s emeraldcounta run clear @s emerald 0
execute as @a run scoreboard players operation @s emeraldcounta -= @s compactshardcnta

execute as @a store result score @s summoncounta run clear @s slime_spawn_egg{EntityTag:{Size:25,Tags:["bosssummon"],CustomName:'{"text":"Lord Bounce"}'},display:{Name:'{"text": "Slime Charm", "color": "green", "italic": false}',Lore:['{"text":"Used to summon Lord Bounce", "color": "gray"}']},Enchantments:[{}]} 0
execute as @a store result score @s spawneggcounta run clear @s slime_spawn_egg 0
execute as @a run scoreboard players operation @s spawneggcounta -= @s summoncounta

execute as @a store result score @s kbcount run clear @s knowledge_book 0

scoreboard players set @a removedbook 0
execute as @a[scores={removebook=1..}] if score @s removedbook matches 0 run function boss:crafted/removebook

execute as @a[scores={crouch=0}] at @s positioned ~ ~1.6 ~ run function boss:raycast/find
execute as @a[scores={crouch=1..}] at @s positioned ~ ~1.28 ~ run function boss:raycast/find
scoreboard players set @a crouch 0

execute as @a[scores={holdingpotionto=0,drankpotion=1..}] run scoreboard players add @s effectlevel 1
scoreboard players set @a drankpotion 0
scoreboard players set @a holdingpotionto 1
execute as @a if data entity @s SelectedItem{id:"minecraft:potion",tag:{Enchantments:[{}],HideFlags:32,CustomPotionColor:16121964,display:{Name:'{"text": "Enhanced Potion", "italic": false}',Lore:['{"text": "Drink for infinite abilties, drink more for better ones!","color": "gray"}']}}} run scoreboard players set @s holdingpotionto 0

scoreboard players add @a petout 0
execute at @e[type=slime,tag=slimepetsummon] run function boss:events/pet/summon
execute as @a[scores={petout=1}] at @s run function boss:events/pet/out

scoreboard players set @a holdingsummonto 1
execute as @a if data entity @s SelectedItem{id:"minecraft:zombie_horse_spawn_egg",tag:{display:{Name:'{"text":"Baby Slime","italic":false}'},Enchantments:[{}],EntityTag:{id:"minecraft:slime",Size:0,Tags:["slimepetsummon"],DeathLootTable:"minecraft:empty"}}} run scoreboard players set @s holdingsummonto 0

execute as @a[scores={effectlevel=1}] if score effect slimeboss matches 1 run function boss:effect/lvl1
execute as @a[scores={effectlevel=2}] if score effect slimeboss matches 1 run function boss:effect/lvl2
execute as @a[scores={effectlevel=3..,petout=0}] if score effect slimeboss matches 1 run function boss:effect/lvl3
execute as @a[scores={effectlevel=3..,petout=1}] if score effect slimeboss matches 1 run function boss:effect/lvl4