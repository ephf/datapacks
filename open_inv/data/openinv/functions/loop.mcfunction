execute as @p[tag=openinv] store success score inventory changes run data modify storage open_inv inventory set from entity @s Inventory 
execute as @p[tag=openinv] store success score container changes run data modify storage open_inv conatiner set from entity @e[type=chest_minecart,tag=openinv,limit=1] Items
execute as @p[tag=openinv] store success score inventory changes if score inventory changes matches 0 run data modify storage open_inv enderchest set from entity @s EnderItems


execute if score inventory changes matches 1 if entity @e[type=chest_minecart,tag=page0] run function openinv:fill/container/hot-3
execute if score container changes matches 1 if entity @e[type=chest_minecart,tag=page0] run function openinv:fill/inventory/hot-3

execute if score inventory changes matches 1 if entity @e[type=chest_minecart,tag=page1] run function openinv:fill/container/1-2
execute if score container changes matches 1 if entity @e[type=chest_minecart,tag=page1] run function openinv:fill/inventory/1-2

execute if score inventory changes matches 1 if entity @e[type=chest_minecart,tag=page2] run function openinv:fill/container/armor-e1
execute if score container changes matches 1 if entity @e[type=chest_minecart,tag=page2] run function openinv:fill/inventory/armor-e1

execute if score inventory changes matches 1 if entity @e[type=chest_minecart,tag=page3] run function openinv:fill/container/e2-e3
execute if score container changes matches 1 if entity @e[type=chest_minecart,tag=page3] run function openinv:fill/inventory/e2-e3


execute as @e[type=chest_minecart,tag=openinv] run function openinv:fill/container/base

execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run summon chest_minecart ~ ~2 ~ {Tags:['openinv','page0'],Silent:1,NoGravity:1}
execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run function openinv:fill/container/hot-3
execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run setblock ~ 255 ~ oak_sign{Text1:'[{"selector":"@p[tag=openinv]","color":"red"},{"text":"\'s inventory","color":"red"}]'}

execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run item replace entity @e[type=chest_minecart,tag=openinv] container.18 with minecraft:barrier{display:{Name:'{"text":"clear player","color":"red","italic":false}',Lore:['{"text":"clicking on this will remove all items in this player\'s inventory","color":"dark_red","italic":false}']}}
execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run item replace entity @e[type=chest_minecart,tag=openinv] container.23 with minecraft:arrow{display:{Name:'{"text":"next page","color":"yellow","italic":false}'}}
execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run item replace entity @e[type=chest_minecart,tag=openinv] container.21 with minecraft:arrow{display:{Name:'{"text":"prev page","color":"yellow","italic":false}'}}

execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run data modify entity @e[type=chest_minecart,tag=openinv,limit=1] CustomName set from block ~ 255 ~ Text1
execute as @a[tag=!summoned] at @s if data entity @s SelectedItem.tag{OpenInv:1} run setblock ~ 255 ~ air
execute as @a if data entity @s SelectedItem.tag{OpenInv:1} run tag @s add summoned
execute as @a[tag=summoned] at @s unless data entity @s SelectedItem.tag{OpenInv:1} run tp @e[type=chest_minecart,tag=openinv] ~ -10 ~
execute as @a[tag=summoned] at @s unless data entity @s SelectedItem.tag{OpenInv:1} run kill @e[type=chest_minecart,tag=openinv]
execute as @a unless data entity @s SelectedItem.tag{OpenInv:1} run tag @s remove summoned


# menus


scoreboard players enable @a openinv 

execute as @a[scores={openinv=1}] run tellraw @s ["",{"text":"======================\nopen inventory\n-----","color":"yellow"},{"text":"\n\n"},{"text":"[get item]","color":"green","clickEvent":{"action":"run_command","value":"/give @p stick{Enchantments:[{}],OpenInv:1,display:{Name:'{\"text\":\"open inventory\",\"color\":\"red\",\"italic\":false}'}}"}},{"text":"\n\n"},{"text":"[tag @p]","color":"aqua","clickEvent":{"action":"run_command","value":"/tag @p[distance=1..] add openinv"}},{"text":"\n","color":"aqua"},{"text":"[custom tag]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/tag {PLAYERNAME} add openinv"}},{"text":"\n\n"},{"text":"[remove all tags]","color":"red","clickEvent":{"action":"run_command","value":"/tag @a remove openinv"}},{"text":"\n\n\n"},{"text":"made by ephf on Youtube\n======================","color":"yellow"}]

scoreboard players set @a openinv 0