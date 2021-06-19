particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10

execute as @s[nbt={OnGround:1b}] at @s store result entity @s Motion[1] double -0.3 run data get entity @s Motion[1]
data merge entity @s[nbt={OnGround:1b}] {OnGround:0b}

execute if score @s pA matches 39.. run summon tnt
