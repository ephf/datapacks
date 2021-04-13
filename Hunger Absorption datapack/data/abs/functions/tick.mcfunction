execute as @a[gamemode=survival] run function abs:display
execute as @a[gamemode=adventure] run function abs:display
execute as @a[scores={hungerAbsorption=1..}] run function abs:calc
execute as @a run scoreboard players operation @s hungerCap = @s hunger

execute as @a[scores={ateGoldenApple=1..}] run scoreboard players set @s hungerAbsorption 4
execute as @a[scores={ateEGoldenApple=1..}] run scoreboard players set @s hungerAbsorption 16
scoreboard players set @a ateGoldenApple 0
scoreboard players set @a ateEGoldenApple 0