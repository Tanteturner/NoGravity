data modify block 0 1 0 Items[0] set from entity @s Item
execute as @p at @s run function is:modify
data modify entity @s Item merge from block 0 1 0 Items[0]
tag @s add modified