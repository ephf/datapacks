## Initialize Datapack Scoreboards ##
scoreboard objectives add init dummy
scoreboard players add bool init 0

## Initialize Datapack Message ##
execute if score bool init matches 0 run tellraw @a [{"text":"Glow Squid Datapack Installed,\nGet to the Water!","color":"aqua"},{"text":"\n\n!","color":"yellow"},{"text":" Original by @Kazoowii on ","color":"dark_gray"},{"text":"[YouTube]","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC8puxYKEvBJ7DfCufqWKq9w"},"color":"dark_red"},{"text":"\n!","color":"yellow"},{"text":" Remake by @Ephf on ","color":"dark_gray"},{"text":"[YouTube]","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCqfHbmI7lEK9vHTF4owbt9w"},"color":"dark_red"}]

## Stop Init from running after reload ##
scoreboard players set bool init 1