execute if block ~ ~ ~ #game:foliage run setblock ~ ~ ~ air destroy
execute as @e[type=item_frame,tag=lumina,distance=..1.4,sort=nearest,limit=1] at @s run function game:block/lumina/remove