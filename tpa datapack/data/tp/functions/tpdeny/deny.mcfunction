tellraw @p[tag=tpdeny] [{"text":"the tp request from ","color":"gold"},{"selector":"@s","color":"red"},{"text":" was denied","color":"gold"}]
tellraw @s [{"text":"your tp request to ","color":"gold"},{"selector":"@p[tag=tpdeny]","color":"red"},{"text":" was denied","color":"gold"}]
scoreboard players set t ptrack 1

scoreboard players set @s telt 0
scoreboard players set @s tpt -1