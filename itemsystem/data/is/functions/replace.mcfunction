data modify block 0 1 0 Items[0] merge from entity @s Item
execute as @p run function is:modify
data modify entity @s Item merge from block 0 1 0 Items[0]
tag @s add modified