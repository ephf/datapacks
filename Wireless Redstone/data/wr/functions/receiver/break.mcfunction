setblock ~ ~ ~ air
kill @e[type=glow_item_frame,tag=wr.redstone_receiver,distance=..0.5]
execute positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=wr.right_click,distance=..0.5] run kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},tag=!wr.item_summon,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_button"}},distance=..0.5]
summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{display:{Name:'{"text":"Redstone Receiver","italic":false}'},EntityTag:{Tags:["wr.redstone_receiver"]},Enchantments:[{}]}},Tags:["wr.item_summon"]}