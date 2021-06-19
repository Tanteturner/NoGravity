# Get direction Values
execute as @e[tag=p,tag=!pow_setup,distance=..6] store result score @s pX run data get entity @s direction[0] 1000000
execute as @e[tag=p,tag=!pow_setup,distance=..6] store result score @s pY run data get entity @s direction[1] 1000000
execute as @e[tag=p,tag=!pow_setup,distance=..6] store result score @s pZ run data get entity @s direction[2] 1000000
#Find distance
execute as @e[tag=p,tag=!pow_setup] run scoreboard players operation @s pX *= @s pP
execute as @e[tag=p,tag=!pow_setup] run scoreboard players operation @s pY *= @s pP
execute as @e[tag=p,tag=!pow_setup] run scoreboard players operation @s pZ *= @s pP
#Set Direction
execute as @e[tag=!d,tag=p,tag=!pow_setup] store result entity @s power[0] double 0.00000001 run scoreboard players get @s pX
execute as @e[tag=!d,tag=p,tag=!pow_setup] store result entity @s power[1] double 0.00000001 run scoreboard players get @s pY
execute as @e[tag=!d,tag=p,tag=!pow_setup] store result entity @s power[2] double 0.00000001 run scoreboard players get @s pZ
tag @e[tag=p] add p_setup
