advancement revoke @s only game:place/crafting_table
scoreboard players set iter crafting 0

execute positioned ~ ~1.7 ~ rotated as @s run function game:crafting/place/raycast