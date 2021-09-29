item replace block ~ ~ ~ container.15 with air
execute store success score success crafting run data modify entity @s data.items set from block ~ ~ ~ Items
execute if score success crafting matches 1 run function game:crafting/change
function game:crafting/check_recepies
execute unless block ~ ~ ~ barrel run kill @s