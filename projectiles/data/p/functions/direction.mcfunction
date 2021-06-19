# Position Anchor
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pX run data get entity @s Pos[0] 1000000
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pY run data get entity @s Pos[1] 1000000
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pZ run data get entity @s Pos[2] 1000000
# Position Projectile
execute as @e[tag=p,tag=!p_setup,distance=..6] store result score @s pX run data get entity @s Pos[0] 1000000
execute as @e[tag=p,tag=!p_setup,distance=..6] store result score @s pY run data get entity @s Pos[1] 1000000
execute as @e[tag=p,tag=!p_setup,distance=..6] store result score @s pZ run data get entity @s Pos[2] 1000000
#Find distance
scoreboard players operation @e[tag=p,tag=!p_setup] pX -= @e[tag=p_anchor,limit=1,sort=nearest] pX
scoreboard players operation @e[tag=p,tag=!p_setup] pY -= @e[tag=p_anchor,limit=1,sort=nearest] pY
scoreboard players operation @e[tag=p,tag=!p_setup] pZ -= @e[tag=p_anchor,limit=1,sort=nearest] pZ
#Set Direction
execute as @e[tag=!d,tag=p,tag=!p_setup] store result entity @s direction[0] double -0.000001 run scoreboard players get @s pX
execute as @e[tag=!d,tag=p,tag=!p_setup] store result entity @s direction[1] double -0.000001 run scoreboard players get @s pY
execute as @e[tag=!d,tag=p,tag=!p_setup] store result entity @s direction[2] double -0.000001 run scoreboard players get @s pZ
tag @e[tag=p] add p_setup
