execute unless block ~ ~ ~ water run setblock ~ ~ ~ light
execute if block ~ ~ ~ water run setblock ~ ~ ~ light[waterlogged=true]
data merge entity @s {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:2}}}
tag @s remove lumina_setup
tag @s add lumina
scoreboard players set @s lumina_level 60
playsound minecraft:block.fungus.place block @a ~ ~ ~ 1.24 1