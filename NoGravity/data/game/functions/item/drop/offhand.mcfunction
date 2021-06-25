execute if data entity @s Inventory[{Slot: -106b}] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, Tags: ["dropped_item"]}
data modify entity @e[type=item,tag=dropped_item,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot: -106b}]
data modify entity @e[type=item,tag=dropped_item,limit=1,sort=nearest] Thrower set from entity @s UUID
item replace entity @s weapon.offhand with air
