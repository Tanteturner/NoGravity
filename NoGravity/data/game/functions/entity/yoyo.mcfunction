particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10

execute as @s[scores={pA=5..}] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}

execute as @s[scores={pA=39..}] run kill @e[type=armor_stand,tag=yoyo,limit=1,sort=nearest,distance=..2]
