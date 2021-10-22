scoreboard players add @s wr.tune 1
tag @s add wr.get_tune
setblock 2999999 0 2999999 air
setblock 2999999 0 2999999 oak_sign{Text1:'[{"score":{"name":"@e[tag=wr.get_tune,limit=1]","objective":"wr.tune"}}]'}
tag @e remove wr.get_tune
data modify entity @s CustomName set from block 2999999 0 2999999 Text1