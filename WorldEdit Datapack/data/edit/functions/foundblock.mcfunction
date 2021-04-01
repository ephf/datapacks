execute store result score x raycast run data get entity @e[type=armor_stand,tag=ray,limit=1,sort=nearest] Pos[0]
execute store result score y raycast run data get entity @e[type=armor_stand,tag=ray,limit=1,sort=nearest] Pos[1]
execute store result score z raycast run data get entity @e[type=armor_stand,tag=ray,limit=1,sort=nearest] Pos[2]
scoreboard players set new raycast 0
execute store result storage raycast testPos[0] double 1 run scoreboard players get x raycast
execute store result storage raycast testPos[1] double 1 run scoreboard players get y raycast
execute store result storage raycast testPos[2] double 1 run scoreboard players get z raycast
execute store success score new raycast run data modify storage raycast currentPos set from storage raycast testPos
execute if score new raycast matches 1 run data modify storage raycast pos.two set from storage raycast pos.one
execute if score new raycast matches 1 run data modify storage raycast pos.one set from storage raycast currentPos
execute if score new raycast matches 1 run data modify storage raycast block.two set from storage raycast block.one
execute if score new raycast matches 1 run function edit:getblock
data modify entity @e[type=armor_stand,tag=ray,limit=1,sort=nearest] Pos set from storage raycast pos.two
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Tags:['gpos1'],Invisible:1}
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air store result score @s pos1x run data get entity @e[type=armor_stand,tag=gpos1,limit=1,sort=nearest] Pos[0]
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air store result score @s pos1y run data get entity @e[type=armor_stand,tag=gpos1,limit=1,sort=nearest] Pos[1]
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air store result score @s pos1z run data get entity @e[type=armor_stand,tag=gpos1,limit=1,sort=nearest] Pos[2]
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air run tellraw @s [{"text":"First position set to (","color":"light_purple"},{"score":{"name":"@s","objective":"pos1x"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos1y"}},{"text":", ","color":"light_purple"},{"score":{"name":"@s","objective":"pos1z"}},{"text":")","color":"light_purple"}]
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air run function edit:setblock
execute at @e[type=armor_stand,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air run function edit:reset
kill @e[type=armor_stand,tag=ray,limit=1,sort=nearest]