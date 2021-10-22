scoreboard players set tick wr.main 0

execute as @e[type=item_frame,tag=wr.redstone_transmitter] at @s run function wr:transmitter/down
execute as @e[type=glow_item_frame,tag=wr.redstone_receiver] at @s run function wr:receiver/down
scoreboard players add @e[tag=wr.tune] wr.tune 0

execute at @a positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=wr.tune,distance=..2] run data modify entity @s CustomNameVisible set value 1b
execute at @a positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=wr.tune,distance=2..] run data modify entity @s CustomNameVisible set value 0b

clear @a iron_block{wr_id:"decoration"}
clear @a redstone_torch{wr_id:"decoration"}

execute as @e[type=armor_stand,tag=wr.right_click] unless data entity @s ArmorItems[{id:"minecraft:iron_block",Count:1b,tag:{wr_id:"decoration"}}] unless data entity @s ArmorItems[{id:"minecraft:redstone_torch",Count:1b,tag:{wr_id:"decoration"}}] at @s run function wr:right_click

execute as @e[type=armor_stand,tag=wr.right_click,tag=wr.class.redstone_transmitter] at @s positioned ~ ~1.5 ~ unless entity @e[type=item_frame,tag=wr.redstone_transmitter,distance=..0.5] run function wr:transmitter/break
execute as @e[type=item_frame,tag=wr.redstone_transmitter] at @s unless block ~ ~ ~ redstone_wire run function wr:transmitter/break

execute as @e[type=armor_stand,tag=wr.right_click,tag=wr.class.redstone_receiver] at @s positioned ~ ~1.5 ~ unless entity @e[type=glow_item_frame,tag=wr.redstone_receiver,distance=..0.5] run function wr:receiver/break
execute as @e[type=glow_item_frame,tag=wr.redstone_receiver] at @s unless block ~ ~ ~ minecraft:acacia_button run function wr:receiver/break

kill @e[type=item,nbt={Item:{tag:{wr_id:"decoration"}}}]