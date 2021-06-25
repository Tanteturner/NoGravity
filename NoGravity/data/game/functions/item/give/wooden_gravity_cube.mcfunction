execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 2}}]}] run tag @s add to_offhand

clear @s[tag=!to_offhand] minecraft:carrot_on_a_stick{CustomModelData: 2} 1
#lossless item replacement
#execute as @s[tag=to_offhand] run function game:item/drop/offhand
execute as @s[tag=!to_offhand] run function game:item/drop/mainhand



#replacing item
item replace entity @s[tag=to_offhand] weapon.offhand with minecraft:carrot_on_a_stick{display: {Name: '{"text":"Wooden Gravity Cube","color":"light_purple","italic":false}'}, HideFlags: 31, RepairCost: 9999, Unbreakable: 1b, CustomModelData: 1} 1

item replace entity @s[tag=!to_offhand] weapon.mainhand with minecraft:carrot_on_a_stick{display: {Name: '{"text":"Wooden Gravity Cube","color":"light_purple","italic":false}'}, HideFlags: 31, RepairCost: 9999, Unbreakable: 1b, CustomModelData: 1} 1

tag @s remove to_offhand
