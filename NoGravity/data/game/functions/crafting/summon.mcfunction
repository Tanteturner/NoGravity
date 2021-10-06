execute at @p run summon item ~ ~ ~ {PickupDelay:0,Tags:["setup"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,sort=nearest,tag=setup] run data modify entity @s Item set from storage crafting rest[0]
tag @e[type=item,sort=nearest,tag=setup] remove setup

data remove storage crafting rest[0]

execute store success score success crafting run data get storage crafting rest[0]
execute if score success crafting matches 1 run function game:crafting/summon