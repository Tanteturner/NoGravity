execute at @s run kill @e[type=item,sort=nearest,limit=1,distance=0.01..1,tag=!irepair,tag=!nrepair]
execute at @s store result score @s cd_sound run data get entity @e[type=item,sort=nearest,limit=1,tag=irepair] Item.Count
scoreboard players add @s cd_sound 1
tag @e[type=item,sort=nearest,limit=1,tag=irepair] add setup
execute store result score @s cd_Uses run data get entity @s Item.tag.durability.Uses
execute store result score @s cd_mUses run data get entity @s Item.tag.durability.repairItems[-1].repair
scoreboard players operation @s cd_mUses *= @s cd_sound
scoreboard players operation @s cd_Uses += @s cd_mUses
execute store result score @s cd_ulevel run data get entity @s Item.tag.durability.repairItems[-1].cost
execute store result score @s cd_mUses run data get entity @s Item.tag.durability.RepairCost
scoreboard players operation @s cd_ulevel += @s cd_mUses
scoreboard players operation @s cd_ulevel *= @s cd_sound
execute store result score @s cd_mUses run data get entity @s Item.tag.durability.maxUses
execute if score @s cd_Uses > @s cd_mUses run scoreboard players operation @s cd_Uses = @s cd_mUses
execute store result score uses cd_Uses run scoreboard players get @s cd_Uses
execute store result score uses cd_mUses run scoreboard players get @s cd_mUses
execute store result score uses cd_ulevel run scoreboard players get @s cd_ulevel
data merge block ~ 1 ~ {Text1:"[\"\",{\"text\":\"Durability: \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_Uses\"},\"color\":\"green\",\"italic\":\"false\"},{\"text\":\" / \",\"color\":\"green\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_mUses\"},\"color\":\"green\",\"italic\":\"false\"},{\"text\":\" Cost: \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_ulevel\"},\"color\":\"dark_red\",\"italic\":\"false\"}]"}
data merge entity @e[type=item,tag=irepair,tag=setup,limit=1] {CustomName:""}
data modify entity @e[type=item,tag=irepair,tag=setup,limit=1] CustomName set from block ~ 1 ~ Text1
execute store result entity @e[type=item,tag=irepair,tag=setup,limit=1] Item.Count byte 1 run scoreboard players get @s cd_sound
tag @e[type=item,tag=irepair,tag=setup,limit=1] remove setup
scoreboard players reset @s cd_sound
