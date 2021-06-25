data merge entity @s {inBlockState: {}}
execute if block ~ ~1 ~ minecraft:dispenser[facing=down] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute if block ~ ~-1 ~ minecraft:dispenser[facing=down] align xyz run tp @s ~0.5 ~-1.5 ~0.5
execute if block ~1 ~ ~ minecraft:dispenser[facing=down] align xyz run tp @s ~1.5 ~-0.5 ~0.5
execute if block ~-1 ~ ~ minecraft:dispenser[facing=down] align xyz run tp @s ~-0.5 ~-0.5 ~0.5
execute if block ~ ~ ~1 minecraft:dispenser[facing=down] align xyz run tp @s ~0.5 ~-0.5 ~1.5
execute if block ~ ~ ~-1 minecraft:dispenser[facing=down] align xyz run tp @s ~0.5 ~-0.5 ~-0.5
execute if block ~ ~1 ~ minecraft:dispenser[facing=down] run data merge entity @s {inGround: 0b, Motion: [0.0d, -1.0d, 0.0d]}

execute if block ~ ~1 ~ minecraft:dispenser[facing=up] align xyz run tp @s ~0.5 ~2.5 ~0.5
execute if block ~ ~-1 ~ minecraft:dispenser[facing=up] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute if block ~1 ~ ~ minecraft:dispenser[facing=up] align xyz run tp @s ~1.5 ~1.5 ~0.5
execute if block ~-1 ~ ~ minecraft:dispenser[facing=up] align xyz run tp @s ~-0.5 ~1.5 ~0.5
execute if block ~ ~ ~1 minecraft:dispenser[facing=up] align xyz run tp @s ~0.5 ~1.5 ~1.5
execute if block ~ ~ ~-1 minecraft:dispenser[facing=up] align xyz run tp @s ~0.5 ~1.5 ~-0.5
execute if block ~ ~-1 ~ minecraft:dispenser[facing=up] run data merge entity @s {inGround: 0b, Motion: [0.0d, 1.0d, 0.0d]}

execute if block ~ ~1 ~ minecraft:dispenser[facing=north] align xyz run tp @s ~0.5 ~1.5 ~-0.5
execute if block ~ ~-1 ~ minecraft:dispenser[facing=north] align xyz run tp @s ~0.5 ~-0.5 ~-0.5
execute if block ~1 ~ ~ minecraft:dispenser[facing=north] align xyz run tp @s ~1.5 ~0.5 ~-0.5
execute if block ~-1 ~ ~ minecraft:dispenser[facing=north] align xyz run tp @s ~-0.5 ~0.5 ~-0.5
execute if block ~ ~ ~1 minecraft:dispenser[facing=north] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute if block ~ ~ ~-1 minecraft:dispenser[facing=north] align xyz run tp @s ~0.5 ~0.5 ~-1.5
execute if block ~ ~ ~1 minecraft:dispenser[facing=north] run data merge entity @s {inGround: 0b, Motion: [0.0d, 0.0d, -1.0d]}
