setblock ~ ~ ~ minecraft:acacia_button[powered=false,face=floor]
tag @s add wr.new
summon minecraft:armor_stand ~ ~-1.5 ~ {ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b,tag:{wr_id:"decoration"}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,CustomName:'{"text":"0"}',Tags:["wr.right_click","wr.tune","wr.new","wr.class.redstone_receiver"]}
scoreboard players add n wr.block_id 1
scoreboard players operation @e[tag=wr.new] wr.block_id = n wr.block_id
tag @e remove wr.new
tag @s add wr.placed