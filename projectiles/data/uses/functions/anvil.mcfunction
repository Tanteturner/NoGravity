data modify block ~ 2 ~ Items[0] set from entity @s Inventory[{tag:{RepairCost:1,durability:{}}}]
clear @s #minecraft:useable{RepairCost:1,durability:{}}
execute store result block ~ 2 ~ Items[0].tag.Damage int 1 run data get block ~ 2 ~ Items[0].tag.durability.prevUses
data modify block ~ 2 ~ Items[0].tag.RepairCost set value 0
loot give @s mine ~ 2 ~ air{drop_contents:1b}
