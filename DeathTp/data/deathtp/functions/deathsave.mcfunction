## Saving Player's Position

execute store result score @s deathx run data get entity @s Pos[0]
execute store result score @s deathy run data get entity @s Pos[1]
execute store result score @s deathz run data get entity @s Pos[2]

scoreboard players set @a isdead 0