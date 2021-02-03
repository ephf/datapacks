execute at @a[scores={openc=1}] run summon chest_minecart ~ ~2 ~ {NoGravity:1,CustomName:'{"text":"Creative"}',Tags:['creative','page0']}
execute as @e[tag=creative] run function inventory:use

execute at @a[scores={closec=1}] run tp @e[distance=..5,tag=creative] ~ -100 ~

scoreboard players enable @a openc
scoreboard players enable @a closec

scoreboard players set @a openc 0
scoreboard players set @a closec 0