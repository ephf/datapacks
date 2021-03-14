## Creating Armor Stand and Setting Position

summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["dtp"]}
execute store result entity @e[type=armor_stand,tag=dtp,limit=1] Pos[0] double 1 run scoreboard players get @s deathx
execute store result entity @e[type=armor_stand,tag=dtp,limit=1] Pos[1] double 1 run scoreboard players get @s deathy
execute store result entity @e[type=armor_stand,tag=dtp,limit=1] Pos[2] double 1 run scoreboard players get @s deathz

## Teleporting Player to Armor Stand

execute at @e[type=armor_stand,tag=dtp,limit=1] run tp @s ~ ~ ~
kill @e[type=armor_stand,tag=dtp]