scoreboard players set @s found_block 0
tag @s add setup

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/axe run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/axe positioned ~ ~1 ~ run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/axe positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/axe positioned ~1 ~ ~ run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/axe positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/axe positioned ~ ~ ~1 run function game:entity/block_breaker/summon_axe
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/axe positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_axe

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/shovel run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/shovel positioned ~ ~1 ~ run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/shovel positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/shovel positioned ~1 ~ ~ run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/shovel positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/shovel positioned ~ ~ ~1 run function game:entity/block_breaker/summon_shovel
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/shovel positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_shovel

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/ores run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/ores positioned ~ ~1 ~ run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/ores positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/ores positioned ~1 ~ ~ run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/ores positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/ores positioned ~ ~ ~1 run function game:entity/block_breaker/summon_ore_extractor
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/ores positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_ore_extractor

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/pickaxe_1 run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/pickaxe_1 positioned ~ ~1 ~ run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/pickaxe_1 positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/pickaxe_1 positioned ~1 ~ ~ run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/pickaxe_1 positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/pickaxe_1 positioned ~ ~ ~1 run function game:entity/block_breaker/summon_pickaxe_1
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/pickaxe_1 positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_pickaxe_1

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/shears run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/shears positioned ~ ~1 ~ run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/shears positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/shears positioned ~1 ~ ~ run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/shears positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/shears positioned ~ ~ ~1 run function game:entity/block_breaker/summon_shears
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/shears positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_shears

execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~ #game:mining/hand run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~0.05 ~ #game:mining/hand positioned ~ ~1 ~ run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~-0.05 ~ #game:mining/hand positioned ~ ~-1 ~ run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~0.05 ~ ~ #game:mining/hand positioned ~1 ~ ~ run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~-0.05 ~ ~ #game:mining/hand positioned ~-1 ~ ~ run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~0.05 #game:mining/hand positioned ~ ~ ~1 run function game:entity/block_breaker/summon_hand
execute as @s[scores={found_block=0}] store result score @s found_block if block ~ ~ ~-0.05 #game:mining/hand positioned ~ ~ ~-1 run function game:entity/block_breaker/summon_hand
