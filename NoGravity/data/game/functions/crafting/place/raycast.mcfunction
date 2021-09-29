execute if block ~ ~ ~ #game:nonsolid positioned ^ ^ ^1 run function game:crafting/place/raycast
execute unless block ~ ~ ~ #game:nonsolid if block ~ ~ ~ barrel run function game:crafting/place/setup
execute unless block ~ ~ ~ #game:nonsolid unless block ~ ~ ~ barrel run function game:crafting/place/search
