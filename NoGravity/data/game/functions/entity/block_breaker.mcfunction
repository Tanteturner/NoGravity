execute as @s[tag=!setup] store result score @s destroy_delay run data get entity @s ArmorItems[3].tag.destroy_delay 1
tag @s add setup

scoreboard players remove @s destroy_delay 10
scoreboard players add @s destroy_sound 1

execute as @s[scores={destroy_delay=..-1}] at @s run setblock ~ ~ ~ air destroy
execute as @s[scores={destroy_delay=..-1},tag=to_stone] at @s run setblock ~ ~ ~ stone


#sounds
execute as @s[tag=ore_extractor,scores={destroy_sound=1}] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 0.3 0.4
execute as @s[tag=shovel,scores={destroy_sound=1}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.3 0.8
execute as @s[tag=axe,scores={destroy_sound=1}] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 0.3 0.4
execute as @s[tag=pickaxe,scores={destroy_sound=1}] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 0.3 0.4
execute as @s[tag=shears,scores={destroy_sound=1}] at @s run playsound minecraft:block.grass.break master @a ~ ~ ~ 0.3 1.1


scoreboard players set @s[scores={destroy_sound=4..}] destroy_sound 0

#killing

execute as @s[tag=wooden_cube] unless entity @e[type=arrow,tag=gravity_orb,distance=..2] run kill @s

execute as @s[scores={destroy_delay=..-1}] at @s run tp @e[type=item,distance=..1] @p[distance=..5]
execute as @s[scores={destroy_delay=..-1}] at @s as @e[type=item,distance=..1] run data merge entity @s {PickupDelay: 0}
kill @s[scores={destroy_delay=..-1}]


#tags:
#game:mining/axe
#game:mining/shovel
#game:mining/pickaxe
#game:mining/pickaxe_2

#holz, alle
