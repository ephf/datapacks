execute as @a unless score @s ptrack matches -2147483648..2147483647 run function tp:ptrack/add

execute as @a[scores={tpid=1..}] run tellraw @s [{"text":"your player id is: ","color":"gold"},{"score":{"name":"@s","objective":"ptrack"},"color":"red"}]
scoreboard players set @a tpid 0

execute as @a[scores={tphelp=1..}] run function tp:tphelp/main
scoreboard players set @a tphelp 0

execute as @a[scores={tpa=-2147483648..-1}] run function tp:tpa/main
execute as @a[scores={tpa=1..2147483647}] run function tp:tpa/main
scoreboard players set @a tpa 0

execute as @a[scores={tpla=1..}] run function tp:tpla/main
scoreboard players set @a tpla 0

execute as @a[scores={tpaccept=-2147483648..-1}] run function tp:tpaccept/main
execute as @a[scores={tpaccept=1..2147483647}] run function tp:tpaccept/main
scoreboard players set @a tpaccept 0

execute as @a[scores={tpdeny=-2147483648..-1}] run function tp:tpdeny/main
execute as @a[scores={tpdeny=1..2147483647}] run function tp:tpdeny/main
scoreboard players set @a tpdeny 0

execute as @a[scores={tpt=1..}] run scoreboard players remove @s tpt 1
execute as @a[scores={tpt=0}] run tag @a remove tpt
execute as @a[scores={tpt=0}] run tag @s add tpt
execute as @a[scores={tpt=0}] as @a if score @s ptrack = @p[tag=tpt] telt run tellraw @p[tag=tpt] [{"text":"your tp request to ","color":"gold"},{"selector":"@p[tag=tpt]","color":"red"},{"text":" has expired","color":"gold"}]
execute as @a[scores={tpt=0}] run scoreboard players set @s telt 0
execute as @a[scores={tpt=0}] run scoreboard players remove @s tpt 1

execute as @a[scores={tplm=1}] run function tp:tplm/main

execute as @a[scores={tplt=1..}] run scoreboard players remove @s tplt 1
execute as @a[scores={tplt=0}] run tellraw @s [{"text":"your name and number has been taking off the list because they were up for more than a minute","color":"gold"}]
execute as @a[scores={tplt=0}] run scoreboard players set @s tplm 0
execute as @a[scores={tplt=0}] run scoreboard players remove @s tplt 1
execute as @a[scores={tplm=3}] run tellraw @s [{"text":"your name is already on the list","color":"dark_red"}]
execute as @a[scores={tplm=3}] run scoreboard players set @s tplm 2

execute as @a[scores={tpl=1..}] run function tp:tpl/main
scoreboard players set @a tpl 0

execute as @a[scores={tpcancel=1..,tpt=..0}] run tellraw @s [{"text":"you don't have a tp request to cancel","color":"dark_red"}]
execute as @a[scores={tpcancel=1..,tpt=1..}] run tellraw @s [{"text":"your tp request was canceled","color":"gold"}]
execute as @a[scores={tpcancel=1..}] run scoreboard players set @s tpt -1
scoreboard players set @a tpcancel 0

scoreboard players enable @a tpa
scoreboard players enable @a tplm
scoreboard players enable @a tpl
scoreboard players enable @a tpla
scoreboard players enable @a tpaccept
scoreboard players enable @a tpdeny
scoreboard players enable @a tpcancel
scoreboard players enable @a tpid
scoreboard players enable @a tphelp