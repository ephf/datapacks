bossbar set slimeboss visible false
scoreboard players set running slimeboss 0
loot give @a loot boss:drop
advancement grant @a only boss:killed
execute as @e[type=slime] run data modify entity @s Size set value 0
kill @e[type=slime]
tellraw @a [{"text": "Lord Bounce has been defeated!", "color": "dark_green"}]