advancement revoke @s only game:place/lumina
execute as @e[type=item_frame,tag=lumina_setup,distance=..5] at @s unless predicate game:item/lumina/campfire run function game:block/lumina/setblock
execute as @e[type=item_frame,tag=lumina_setup,distance=..5] at @s if predicate game:item/lumina/campfire run function game:block/lumina/light_campfire