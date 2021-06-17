scoreboard players operation @p[tag=tpa] telt = @p[tag=tpa] tpa
scoreboard players set t ptrack 1
scoreboard players set @p[tag=tpa] tpt 1200
scoreboard players set @p[tag=tpa] tpty 1
tellraw @s [{"selector":"@p[tag=tpa]","color":"red"},{"text":" wants to tp to you!\nto accept: ","color":"gold"},{"text":"/trigger tpaccept\n","color":"red"},{"text":"to deny: ","color":"gold"},{"text":"/trigger tpdeny","color":"red"}]
tellraw @p[tag=tpa] [{"text":"you have issued a tp request to ","color":"gold"},{"selector":"@s","color":"red"},{"text":"\nto cancel: ","color":"gold"},{"text":"/trigger tpcancel","color":"red"}]