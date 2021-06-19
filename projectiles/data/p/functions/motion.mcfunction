# Position Anchor
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pX run data get entity @s Pos[0] 100000
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pY run data get entity @s Pos[1] 100000
execute as @e[tag=p_anchor,limit=1,sort=nearest] store result score @s pZ run data get entity @s Pos[2] 100000
# Position Projectile
execute as @s store result score @s pX run data get entity @s Pos[0] 100000
execute as @s store result score @s pY run data get entity @s Pos[1] 100000
execute as @s store result score @s pZ run data get entity @s Pos[2] 100000
#Find distance
scoreboard players operation @s pX -= @e[tag=p_anchor,limit=1,sort=nearest] pX
scoreboard players operation @s pY -= @e[tag=p_anchor,limit=1,sort=nearest] pY
scoreboard players operation @s pZ -= @e[tag=p_anchor,limit=1,sort=nearest] pZ
#Set motion
execute store result entity @s Motion[0] double -0.00001 run scoreboard players get @s pX
execute store result entity @s Motion[1] double -0.00001 run scoreboard players get @s pY
execute store result entity @s Motion[2] double -0.00001 run scoreboard players get @s pZ

tag @e[tag=p] add p_setup
