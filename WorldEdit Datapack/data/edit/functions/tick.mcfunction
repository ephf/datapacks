#mc8
execute as @a at @s if data entity @s SelectedItem.tag{Wand:1} positioned ~ ~1.6 ~ run function edit:raycast
execute as @a at @s if data entity @s SelectedItem.tag{Wand:1} run function edit:cpos2
execute as @a run function edit:cpos2hand
scoreboard objectives add wand trigger
scoreboard players enable @a wand
execute as @a[scores={wand=1..}] run give @s wooden_axe{display:{Name:'[{"text":"Wand ","italic":false},{"text":"[beta]","color":"light_purple","italic":false}]'},Wand:1}
scoreboard players set @a wand 0
scoreboard objectives add pos1 trigger
scoreboard players enable @a pos1
execute as @a[scores={pos1=1..}] run execute store result score @s pos1x run execute as @a[scores={pos1=1..}] run data get entity @s Pos[0]
execute as @a[scores={pos1=1..}] run execute store result score @s pos1y run execute as @a[scores={pos1=1..}] run data get entity @s Pos[1]
execute as @a[scores={pos1=1..}] run execute store result score @s pos1z run execute as @a[scores={pos1=1..}] run data get entity @s Pos[2]
execute as @a[scores={pos1=1..}] run tellraw @s [{"text":"First position set to (","color":"light_purple"},{"score":{"name":"@s","objective":"pos1x"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos1y"}},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos1z"}},{"text":")","color":"light_purple"}]
scoreboard players set @a pos1 0
scoreboard objectives add pos2 trigger
scoreboard players enable @a pos2
execute as @a[scores={pos2=1..}] run execute store result score @s pos2x run execute as @a[scores={pos2=1..}] run data get entity @s Pos[0]
execute as @a[scores={pos2=1..}] run execute store result score @s pos2y run execute as @a[scores={pos2=1..}] run data get entity @s Pos[1]
execute as @a[scores={pos2=1..}] run execute store result score @s pos2z run execute as @a[scores={pos2=1..}] run data get entity @s Pos[2]
execute as @a[scores={pos2=1..}] run tellraw @s [{"text":"Second position set to (","color":"light_purple"},{"score":{"name":"@s","objective":"pos2x"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos2y"}},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos2z"}},{"text":")","color":"light_purple"}]
scoreboard players set @a pos2 0
scoreboard objectives add up trigger
scoreboard players enable @a up
execute as @a[scores={up=1..}] run function edit:up
scoreboard players set @a up 0
