execute if predicate game:item/lumina/campfire_n positioned ~ ~ ~-1 run function game:block/light_campfire
execute if predicate game:item/lumina/campfire_s positioned ~ ~ ~1 run function game:block/light_campfire
execute if predicate game:item/lumina/campfire_e positioned ~1 ~ ~ run function game:block/light_campfire
execute if predicate game:item/lumina/campfire_w positioned ~-1 ~ ~ run function game:block/light_campfire
execute if predicate game:item/lumina/campfire_u positioned ~ ~1 ~ run function game:block/light_campfire
execute if predicate game:item/lumina/campfire_d positioned ~ ~-1 ~ run function game:block/light_campfire

kill @s

playsound item.firecharge.use block @a ~ ~ ~ 1 1