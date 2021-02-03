## Initialize Datapack Scoreboards ##
scoreboard objectives add thiniceinit dummy
scoreboard players add bool thiniceinit 0

## Initialize Datapack Message ##
execute if score bool thiniceinit matches 0 run tellraw @a [{"text":"Thin Ice Datapack Installed,\nYour on Thin Ice, Buddy!","color":"aqua"},{"text":"\n\n!","color":"yellow"},{"text":" Made by @Ephf on ","color":"dark_gray"},{"text":"[YouTube]","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCqfHbmI7lEK9vHTF4owbt9w"},"color":"dark_red"}]

## Stop Init from running after reload ##
scoreboard players set bool thiniceinit 1