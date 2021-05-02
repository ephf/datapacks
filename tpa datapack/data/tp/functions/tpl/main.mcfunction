tag @a remove tpl
tag @s add tpl
tellraw @s [{"text":"teleport list:","color":"gold"}]
execute as @a[scores={tplm=2}] run tellraw @p[tag=tpl] [{"score":{"name":"@s","objective":"ptrack"},"color":"red"},{"text":" - ","color":"gold"},{"selector":"@s"}]
tellraw @s [{"text":"don't see who you want? to get a full list of everyone online, run this command: ","color":"gold"},{"text":"/trigger tpla\n","color":"red"},{"text":"or tell your friend to run this command: "},{"text":"/trigger tplm ","color":"red"},{"text":"to add their name to the list","color":"gold"}]