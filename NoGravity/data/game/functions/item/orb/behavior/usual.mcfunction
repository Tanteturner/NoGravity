#orb particles
particle dust 1 0 1 1 ~ ~ ~ 0.1 0.1 0.1 1 4
particle minecraft:portal ~ ~-0.5 ~ 0.15 0.15 0.15 0 5 normal

#max age
execute run scoreboard players add @s orb_age 1
execute if score @s orb_age >= @s orb_max_age unless entity @e[type=armor_stand,tag=block_breaker,distance=..1.5] run tag @s add called_back

#called back behavior call:
execute as @s[tag=grab_items] run function game:item/orb/behavior/grab_items

execute as @s[tag=retreat_on_ground] run function game:item/orb/behavior/retreat_on_ground
execute as @s[tag=retreat_on_hit] run function game:item/orb/behavior/retreat_on_hit

execute as @s[tag=destroy_foliage] run function game:item/orb/behavior/destroy_foliage
execute as @s[tag=block_breaker,nbt={inGround: 1b},tag=!setup] run function game:item/orb/behavior/block_breaker

execute as @s[tag=called_back] run function game:item/orb/behavior/called_back

scoreboard players add @s orb_rotation 20
execute store result entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=gravity_orb] Rotation[0] float 1 run scoreboard players get @s orb_rotation
