execute unless data entity @s Items[{Slot:18b,id:'minecraft:barrier'}] run clear @p[tag=openinv]

execute if entity @s[tag=page2] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s add page3
execute if entity @s[tag=page2] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run function openinv:fill/container/e2-e3
execute if entity @s[tag=page2] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s remove page2

execute if entity @s[tag=page1] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s add page2
execute if entity @s[tag=page1] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run function openinv:fill/container/armor-e1
execute if entity @s[tag=page1] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s remove page1

execute if entity @s[tag=page0] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s add page1
execute if entity @s[tag=page0] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run function openinv:fill/container/1-2
execute if entity @s[tag=page0] unless data entity @s Items[{Slot:23b,id:'minecraft:arrow'}] run tag @s remove page0

execute if entity @s[tag=page1] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s add page0
execute if entity @s[tag=page1] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run function openinv:fill/container/hot-3
execute if entity @s[tag=page1] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s remove page1

execute if entity @s[tag=page2] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s add page1
execute if entity @s[tag=page2] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run function openinv:fill/container/1-2
execute if entity @s[tag=page2] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s remove page2

execute if entity @s[tag=page3] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s add page2
execute if entity @s[tag=page3] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run function openinv:fill/container/armor-e1
execute if entity @s[tag=page3] unless data entity @s Items[{Slot:21b,id:'minecraft:arrow'}] run tag @s remove page3


item replace entity @s container.18 with minecraft:barrier{display:{Name:'{"text":"clear player","color":"red","italic":false}',Lore:['{"text":"clicking on this will remove all items in this player\'s inventory","color":"dark_red","italic":false}']}}

execute as @s[tag=page0] run item replace entity @s container.22 with minecraft:compass{display:{Name:'{"text":"Hotbar and Inventory (18-26)","color":"white","italic":false}',Lore:['{"text":"row 1 - hotbar","color":"aqua","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"aqua","italic":false}','{"text":"row 2 - inventory(3rd row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}']}}
execute as @s[tag=page1] run item replace entity @s container.22 with minecraft:compass{display:{Name:'{"text":"Inventory (0-17)","color":"white","italic":false}',Lore:['{"text":"row 1 - inventory(1st row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}','{"text":"row 2 - inventory(2nd row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}']}}
execute as @s[tag=page2] run item replace entity @s container.22 with minecraft:compass{display:{Name:'{"text":"Armor, Offhand, Mainhand, and Ender Chest (0-8)","color":"white","italic":false}',Lore:['[{"text":"row 1 - armor, ","color":"gold","italic":false},{"text":"offhand, ","color":"yellow","italic":false},{"text":"mainhand","color":"green","italic":false}]','[{"text":"[ ] [ ] [ ] [ ] ","color":"gold","italic":false},{"text":"[ ] ","color":"gray","italic":false},{"text":"[ ] ","color":"yellow","italic":false},{"text":"[ ] ","color":"gray","italic":false},{"text":"[ ] ","color":"green","italic":false},{"text":"[ ]","color":"gray","italic":false}]','{"text":"row 2 - ender chest(1st row)","color":"dark_purple","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"dark_purple","italic":false}']}}
execute as @s[tag=page3] run item replace entity @s container.22 with minecraft:compass{display:{Name:'{"text":"Ender Chest (9-26)","color":"white","italic":false}',Lore:['{"text":"row 1 - ender chest(2nd row)","color":"dark_purple","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"dark_purple","italic":false}','{"text":"row 2 - ender chest(3rd row)","color":"dark_purple","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"dark_purple","italic":false}']}}

item replace entity @s container.23 with minecraft:arrow{display:{Name:'{"text":"next page","color":"yellow","italic":false}'}}
item replace entity @s container.21 with minecraft:arrow{display:{Name:'{"text":"prev page","color":"yellow","italic":false}'}}

clear @a minecraft:arrow{display:{Name:'{"text":"next page","color":"yellow","italic":false}'}}
clear @a minecraft:arrow{display:{Name:'{"text":"prev page","color":"yellow","italic":false}'}}
clear @a minecraft:barrier{display:{Name:'{"text":"clear player","color":"red","italic":false}',Lore:['{"text":"clicking on this will remove all items in this player\'s inventory","color":"dark_red","italic":false}']}}
clear @a minecraft:compass{display:{Name:'{"text":"Hotbar and Inventory (18-26)","color":"white","italic":false}',Lore:['{"text":"row 1 - hotbar","color":"aqua","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"aqua","italic":false}','{"text":"row 2 - inventory(3rd row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}']}}
clear @a minecraft:compass{display:{Name:'{"text":"Inventory (0-17)","color":"white","italic":false}',Lore:['{"text":"row 1 - inventory(1st row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}','{"text":"row 2 - inventory(2nd row)","color":"blue","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"blue","italic":false}']}}
clear @a minecraft:compass{display:{Name:'{"text":"Armor, Offhand, Mainhand, and Ender Chest (0-8)","color":"white","italic":false}',Lore:['[{"text":"row 1 - armor, ","color":"gold","italic":false},{"text":"offhand, ","color":"yellow","italic":false},{"text":"mainhand","color":"green","italic":false}]','[{"text":"[ ] [ ] [ ] [ ] ","color":"gold","italic":false},{"text":"[ ] ","color":"gray","italic":false},{"text":"[ ] ","color":"yellow","italic":false},{"text":"[ ] ","color":"gray","italic":false},{"text":"[ ] ","color":"green","italic":false},{"text":"[ ]","color":"gray","italic":false}]','{"text":"row 2 - ender chest(1st row)","color":"dark_purple","italic":false}','{"text":"[ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]","color":"dark_purple","italic":false}']}}

