data modify storage crafting Items set from entity @s data.items

data modify storage crafting Check set from storage crafting Items

execute if data storage crafting Check[{Slot:0b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:0b}]

data remove storage crafting Check[{Slot:1b}]
data remove storage crafting Check[{Slot:2b}]
data remove storage crafting Check[{Slot:3b}]

execute if data storage crafting Check[{Slot:4b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:4b}]
execute if data storage crafting Check[{Slot:5b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:5b}]
execute if data storage crafting Check[{Slot:6b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:6b}]
execute if data storage crafting Check[{Slot:7b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:7b}]
execute if data storage crafting Check[{Slot:8b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:8b}]
execute if data storage crafting Check[{Slot:9b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:9b}]

data remove storage crafting Check[{Slot:10b}]
data remove storage crafting Check[{Slot:11b}]
data remove storage crafting Check[{Slot:12b}]

execute if data storage crafting Check[{Slot:13b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:13b}]
execute if data storage crafting Check[{Slot:14b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:14b}]
execute if data storage crafting Check[{Slot:15b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:15b}]
execute if data storage crafting Check[{Slot:16b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:16b}]
execute if data storage crafting Check[{Slot:17b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:17b}]
execute if data storage crafting Check[{Slot:18b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:18b}]

data remove storage crafting Check[{Slot:19b}]
data remove storage crafting Check[{Slot:20b}]
data remove storage crafting Check[{Slot:21b}]

execute if data storage crafting Check[{Slot:22b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:22b}]
execute if data storage crafting Check[{Slot:23b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:23b}]
execute if data storage crafting Check[{Slot:24b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:24b}]
execute if data storage crafting Check[{Slot:25b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:25b}]
execute if data storage crafting Check[{Slot:26b,id:"minecraft:flint",tag:{CustomModelData:3}}] run data remove storage crafting Check[{Slot:26b}]

data modify storage crafting recepie set value []
data modify storage crafting recepie[{Slot:1b}] set from storage crafting Items[{Slot:1b}]
data modify storage crafting recepie[{Slot:2b}] set from storage crafting Items[{Slot:2b}]
data modify storage crafting recepie[{Slot:3b}] set from storage crafting Items[{Slot:3b}]

data modify storage crafting recepie[{Slot:10b}] set from storage crafting Items[{Slot:10b}]
data modify storage crafting recepie[{Slot:11b}] set from storage crafting Items[{Slot:11b}]
data modify storage crafting recepie[{Slot:12b}] set from storage crafting Items[{Slot:12b}]

data modify storage crafting recepie[{Slot:19b}] set from storage crafting Items[{Slot:19b}]
data modify storage crafting recepie[{Slot:20b}] set from storage crafting Items[{Slot:20b}]
data modify storage crafting recepie[{Slot:21b}] set from storage crafting Items[{Slot:21b}]

execute if data storage crafting Check[0] run function game:crafting/clean_table