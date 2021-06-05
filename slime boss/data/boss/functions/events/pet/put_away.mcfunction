scoreboard players set @s petout 0
tp @e[type=slime,limit=1,sort=nearest] ~ -70 ~
scoreboard players set pettemp slimeboss 1
execute at @e[type=slime,tag=slimepet] if score @e[type=slime,limit=1,sort=nearest] ptrack = @s ptrack run tp @e[type=slime,limit=1,sort=nearest] ~ -70 ~