data modify storage crafting Items set from entity @s data.items

data modify storage crafting Check set from storage crafting Items

data remove storage crafting Check[{Slot:1b}]
data remove storage crafting Check[{Slot:2b}]
data remove storage crafting Check[{Slot:3b}]

data remove storage crafting Check[{Slot:10b}]
data remove storage crafting Check[{Slot:11b}]
data remove storage crafting Check[{Slot:12b}]

data remove storage crafting Check[{Slot:19b}]
data remove storage crafting Check[{Slot:20b}]
data remove storage crafting Check[{Slot:21b}]

execute if data storage crafting Check[0] run function game:crafting/clean_table