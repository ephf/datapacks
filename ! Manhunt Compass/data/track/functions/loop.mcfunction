## Enabling Players to Use /trigger Command

scoreboard players enable @a compass
execute as @a[scores={compass=1..}] run give @s compass{display:{Name:'[{"text":"Player Tracking Compass","italic":false}]'}}
scoreboard players set @a compass 0

## Setting Spawn to Change Compass Tracking Location ( pretty much all the code :/ )

execute at @e[tag=track] run setworldspawn ~ ~ ~