## Setting Ice and Removing it ##
execute as @e[type=item_frame,tag=thinice,tag=placed] at @s if block ~ ~ ~ water run setblock ~ ~ ~ air
execute as @e[type=item_frame,tag=thinice,tag=placed] at @s if block ~ ~ ~ air run kill @s
execute at @e[type=item_frame,tag=thinice] run setblock ~ ~ ~ ice
execute as @e[type=item_frame,tag=thinice] run tag @s add placed

## Player Detection ##
execute as @e[type=item_frame,tag=thinice] at @s positioned ~ ~1 ~ if entity @e[distance=..1,type=!item_frame] run setblock ~ ~-1 ~ air
execute as @e[type=item_frame,tag=thinice] at @s positioned ~ ~1 ~ if entity @e[distance=..1,type=!item_frame] run playsound minecraft:block.glass.break block @a[distance=..5] ~ ~ ~ 1 0.8