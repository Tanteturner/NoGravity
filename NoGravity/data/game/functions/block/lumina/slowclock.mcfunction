execute if score @s lumina_level matches 9.. if block ~ ~ ~ light[waterlogged=false] run function game:block/lumina/adjust_level
execute if score @s lumina_level matches 9.. if block ~ ~ ~ light[waterlogged=true] run function game:block/lumina/adjust_level_water

execute if score @s lumina_level matches 9.. run scoreboard players remove @s lumina_level 1
execute if score @s lumina_level matches ..9 run scoreboard players reset @s lumina_level


execute unless block ~ ~ ~ light run function game:block/lumina/remove