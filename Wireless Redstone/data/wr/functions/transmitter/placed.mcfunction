setblock ~ ~ ~ redstone_wire
tag @s add wr.new
summon minecraft:armor_stand ~ ~-1.5 ~ {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b,tag:{wr_id:"decoration"}}],NoGravity:1b,CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,CustomName:'{"text":"0"}',Tags:["wr.right_click","wr.tune","wr.new","wr.class.redstone_transmitter"]}
summon minecraft:armor_stand ~ ~-1.5 ~0.15 {ArmorItems:[{},{},{},{id:"minecraft:redstone_torch",Count:1b,tag:{wr_id:"decoration"}}],NoGravity:1b,Tags:["wr.right_click","wr.new","wr.class.redstone_transmitter"],Invisible:1b,Invulnerable:1b}
summon minecraft:armor_stand ~ ~-1.5 ~-0.15 {ArmorItems:[{},{},{},{id:"minecraft:redstone_torch",Count:1b,tag:{wr_id:"decoration"}}],NoGravity:1b,Rotation:[180.0f,0.0f],Invisible:1b,Tags:["wr.right_click","wr.new","wr.class.redstone_transmitter"],Invulnerable:1b}
scoreboard players add n wr.block_id 1
scoreboard players operation @e[tag=wr.new] wr.block_id = n wr.block_id
tag @e remove wr.new
tag @s add wr.placed