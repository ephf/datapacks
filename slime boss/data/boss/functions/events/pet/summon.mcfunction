tag @e[type=slime,limit=1,sort=nearest] remove slimepetsummon
scoreboard players set pettemp slimeboss 0
execute as @p[scores={holdingsummonto=0}] if score @s petout matches 1 run function boss:events/pet/put_away
execute as @p[scores={holdingsummonto=0}] at @s if score @s petout matches 0 if score pettemp slimeboss matches 0 run function boss:events/pet/tag
give @p[scores={holdingsummonto=0}] zombie_horse_spawn_egg{display:{Name:'{"text":"Baby Slime","italic":false}'},Enchantments:[{}],EntityTag:{id:"minecraft:slime",Size:0,Tags:["slimepetsummon"],DeathLootTable:"minecraft:empty"}}