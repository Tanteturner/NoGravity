tag @s add urepair
execute at @s run data merge entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] {Motion:[0.0d,0.0d,0.0d],Tags:["irepair","setup"],NoGravity:1b,CustomNameVisible:1b,PickupDelay:32767,Age:0}
execute unless data entity @e[type=item,tag=irepair,tag=setup,limit=1] Item.tag run data merge entity @e[type=item,tag=irepair,tag=setup,limit=1] {Item:{tag:{}}}
execute store result score @s cd_sound run data get entity @e[type=item,tag=irepair,tag=setup,limit=1] Item.Count
execute at @s run tp @e[type=item,tag=irepair,sort=nearest,limit=1] ~ ~0.4 ~
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
data modify entity @e[type=item,tag=irepair,tag=setup,limit=1] CustomName set from block ~ 1 ~ Text1
tag @e[type=item,tag=irepair,tag=setup,limit=1] remove setup
