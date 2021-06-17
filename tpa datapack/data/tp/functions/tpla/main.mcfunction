tag @a remove tpla
tag @s add tpla
tellraw @s [{"text":"list of online players and their numbers:","color":"gold"}]

execute as @a run tellraw @p[tag=tpla] [{"score":{"name":"@s","objective":"ptrack"},"color":"red"},{"text":" - ","color":"gold"},{"selector":"@s"}]