setblock ~ ~ ~ air
kill @e[type=item_frame,tag=wr.redstone_transmitter,distance=..0.5]
execute positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=wr.right_click,distance=..0.5] run kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame"}},tag=!wr.item_summon,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.5]
execute unless score tick wr.main matches 1 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Redstone Transmitter","italic":false}'},EntityTag:{Tags:["wr.redstone_transmitter"]},Enchantments:[{}]}},Tags:["wr.item_summon"]}
scoreboard players set tick wr.main 1