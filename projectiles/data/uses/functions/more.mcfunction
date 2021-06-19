data modify entity @s Item.tag.durability.repairItems append from entity @e[type=item,sort=nearest,limit=1,distance=0.01..1,nbt={Item:{Count:1b}},tag=!irepair,tag=!nrepair] Item
execute store result score @s cd_sound run data modify entity @s Item.tag.durability.repairItems[-1] merge from entity @s Item.tag.durability.repairItems[-2].nbt
execute if score @s cd_sound matches 0 unless data entity @e[type=item,sort=nearest,limit=1,distance=0.01..1,nbt={Item:{Count:1b}},tag=!irepair,tag=!nrepair] Item.tag run data merge entity @e[type=item,sort=nearest,limit=1,distance=0.01..1,nbt={Item:{Count:1b}},tag=!irepair,tag=!nrepair] {Item:{tag:{}}}
execute if score @s cd_sound matches 0 run data modify entity @s Item.tag.durability.repairItems[-1] set from entity @e[type=item,sort=nearest,limit=1,distance=0.01..1,nbt={Item:{Count:1b}},tag=!irepair,tag=!nrepair] Item.tag
execute if score @s cd_sound matches 0 store result score @s cd_sound run data modify entity @s Item.tag.durability.repairItems[-1] set from entity @e[type=item,tag=irepair,sort=nearest,limit=1] Item.tag
data remove entity @s Item.tag.durability.repairItems[-1]
execute if score @s cd_sound matches 1 run tag @e[type=item,sort=nearest,limit=1,distance=0.01..1,nbt={Item:{Count:1b}},tag=!irepair,tag=!nrepair] add nrepair
