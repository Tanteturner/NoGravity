


execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] run tag @s add to_offhand

#replacing item
item replace entity @s[tag=to_offhand] weapon.offhand with minecraft:carrot_on_a_stick{back_to_inv:1,display:{Name:'{"text":"Wooden Gravity Cube","color":"light_purple","italic":false}'},HideFlags:31,RepairCost:9999,Unbreakable:1b,CustomModelData:2} 1

item replace entity @s[tag=!to_offhand] weapon.mainhand with minecraft:carrot_on_a_stick{back_to_inv:1,display:{Name:'{"text":"Wooden Gravity Cube","color":"light_purple","italic":false}'},HideFlags:31,RepairCost:9999,Unbreakable:1b,CustomModelData:2} 1

tag @s remove to_offhand
