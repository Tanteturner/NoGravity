execute at @s run scoreboard players operation @p[distance=..4,scores={cd_sneak=1..}] cd_ulevel -= @s cd_ulevel
execute store result entity @s Item.tag.durability.Uses short 1 run scoreboard players get @s cd_Uses
scoreboard players operation @s cd_Uses *= #100 cd_Uses
scoreboard players operation @s cd_Uses /= @s cd_mUses
execute store result score @s cd_mUses run data get entity @s Item.tag.durability.realUses
scoreboard players operation @s cd_Uses *= @s cd_mUses
scoreboard players operation @s cd_Uses /= #100 cd_Uses
scoreboard players operation @s cd_mUses -= @s cd_Uses
execute store result score @s cd_Uses run data get entity @s Item.tag.durability.realUses
execute if score @s cd_Uses <= @s cd_mUses run scoreboard players operation @s cd_mUses = @s cd_Uses
execute store result entity @s Item.tag.Damage int 1 run scoreboard players get @s cd_mUses
execute store result entity @s Item.tag.durability.prevUses short 1 run scoreboard players get @s cd_mUses
execute store result score uses cd_Uses run data get entity @s Item.tag.durability.maxUses
execute store result score uses cd_mUses run data get entity @s Item.tag.durability.Uses
data merge block ~ 1 ~ {Text1:"[\"\",{\"text\":\"Durability: \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_mUses\"},\"color\":\"white\",\"italic\":\"false\"},{\"text\":\" / \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_Uses\"},\"color\":\"white\",\"italic\":\"false\"}]"}
data modify entity @s Item.tag.display.Lore[0] set from block ~ 1 ~ Text1
execute at @s run kill @e[type=item,tag=irepair,sort=nearest,limit=1]
tag @s remove repairing
tag @s remove urepair
execute at @s run particle minecraft:witch ~ ~ ~ 0 0 0 1 10 normal
execute if data entity @s Item.tag.durability.RepairCost store result score @s cd_Uses run data get entity @s Item.tag.durability.RepairCost
execute if data entity @s Item.tag.durability.RepairCost run scoreboard players operation @s cd_Uses *= #2 cd_Uses
execute if data entity @s Item.tag.durability.RepairCost run scoreboard players add @s cd_Uses 1
execute if data entity @s Item.tag.durability.RepairCost store result entity @s Item.tag.durability.RepairCost short 1 run scoreboard players get @s cd_Uses
summon area_effect_cloud ~ ~ ~ {Tags:["random"]}
execute store result score @s cd_Uses run data get entity @e[type=area_effect_cloud,tag=random,sort=nearest,limit=1] UUIDMost 0.0000000000001
scoreboard players operation @s cd_Uses %= #8 cd_Uses
execute if score @s cd_Uses matches 3 at @s if block ~ ~-0.5 ~ minecraft:damaged_anvil run setblock ~ ~-0.5 ~ air replace
execute if score @s cd_Uses matches 3 at @s if block ~ ~-0.5 ~ minecraft:chipped_anvil run setblock ~ ~-0.5 ~ damaged_anvil replace
execute if score @s cd_Uses matches 3 at @s if block ~ ~-0.5 ~ minecraft:anvil run setblock ~ ~-0.5 ~ chipped_anvil replace
execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.2
