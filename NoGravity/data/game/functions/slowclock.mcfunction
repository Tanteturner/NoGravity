#playerIDsetup
tag @p[tag=!idsetup] add setidup
execute as @a[tag=setidup] run scoreboard players add #playercount playerID 1
execute as @a[tag=setidup] run scoreboard players operation @s playerID = #playercount playerID
tag @a[tag=setidup] add idsetup
tag @a[tag=setidup] remove setidup

execute as @a[predicate=game:blocks/healing_at_campfire] at @s run effect give @s minecraft:regeneration 1 2

execute as @e[type=item_frame,tag=lumina] at @s run function game:block/lumina/slowclock


schedule function game:slowclock 1s
