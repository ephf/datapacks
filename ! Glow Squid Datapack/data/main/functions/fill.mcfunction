## Remove hitbox of glow squid and tp it ##
execute at @s run tp @e[type=glow_squid,tag=tped] ~ ~ ~ facing ^ ^ ^1
team join nohit @e[type=glow_squid,tag=tped,limit=1]

## Checking if player health is 0, then killing glow squid and resetting air ##
execute if score @s health matches 0 run kill @e[type=glow_squid,tag=tped,limit=1]
execute if score @s health matches 0 run scoreboard players set @s air 9

## Changing ui using unicode characters in the texturepack ##
execute if score @s air matches 0 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"}] 
execute if score @s air matches 1 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"}] 
execute if score @s air matches 2 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 3 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 4 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 5 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 6 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 7 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 8 run title @s actionbar [{"text":"                         "},{"text":"\uEff2"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 
execute if score @s air matches 9 run title @s actionbar [{"text":"                         "},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"},{"text":"\uEff1"}] 