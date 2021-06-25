#save motion for bouncing
tag @s[tag=ground] remove ground
tag @s[nbt={inGround: 1b}] add ground
tag @s[nbt={OnGround: 1b}] add ground

execute store result score @s[tag=!ground] pX run data get entity @s Motion[0] 1000000
execute store result score @s[tag=!ground] pY run data get entity @s Motion[1] 1000000
execute store result score @s[tag=!ground] pZ run data get entity @s Motion[2] 1000000

#bounce
execute as @s[tag=ground] run data merge entity @s {inGround: 0b}

execute as @s[tag=ground,scores={pA=1..,pX=..-1}] unless block ~-0.9 ~ ~ #p:nonsolid run tag @s add bounceX
execute as @s[tag=ground,scores={pA=1..,pX=1..}] unless block ~0.9 ~ ~ #p:nonsolid run tag @s add bounceX
execute as @s[tag=ground,scores={pA=1..,pY=1..}] unless block ~ ~0.9 ~ #p:nonsolid run tag @s add bounceY
execute as @s[tag=ground,scores={pA=1..,pY=..-1}] unless block ~ ~-0.9 ~ #p:nonsolid run tag @s add bounceY
execute as @s[tag=ground,scores={pA=1..,pZ=1..}] unless block ~ ~ ~0.9 #p:nonsolid run tag @s add bounceZ
execute as @s[tag=ground,scores={pA=1..,pZ=..-1}] unless block ~ ~ ~-0.9 #p:nonsolid run tag @s add bounceZ

execute as @s[tag=ground,scores={pA=1..,pX=1..}] unless block ~0.1 ~ ~ #p:nonsolid run tag @s add bounceX
execute as @s[tag=ground,scores={pA=1..,pX=..-1}] unless block ~-0.1 ~ ~ #p:nonsolid run tag @s add bounceX
execute as @s[tag=ground,scores={pA=1..,pY=1..}] unless block ~ ~0.1 ~ #p:nonsolid run tag @s add bounceY
execute as @s[tag=ground,scores={pA=1..,pY=..-1}] unless block ~ ~-0.1 ~ #p:nonsolid run tag @s add bounceY
execute as @s[tag=ground,scores={pA=1..,pZ=1..}] unless block ~ ~ ~0.1 #p:nonsolid run tag @s add bounceZ
execute as @s[tag=ground,scores={pA=1..,pZ=..-1}] unless block ~ ~ ~-0.1 #p:nonsolid run tag @s add bounceZ

kill @s[tag=ground,tag=!bounceX,tag=!bounceY,tag=!bounceZ]

execute as @s[tag=ground,tag=bounceX] store result entity @s Motion[0] double -0.000001 run scoreboard players get @s pX
execute as @s[tag=ground,tag=!bounceX] store result entity @s Motion[0] double 0.000001 run scoreboard players get @s pX
execute as @s[tag=ground,tag=bounceY] store result entity @s Motion[1] double -0.000001 run scoreboard players get @s pY
execute as @s[tag=ground,tag=!bounceY] store result entity @s Motion[1] double 0.000001 run scoreboard players get @s pY
execute as @s[tag=ground,tag=bounceZ] store result entity @s Motion[2] double -0.000001 run scoreboard players get @s pZ
execute as @s[tag=ground,tag=!bounceZ] store result entity @s Motion[2] double 0.000001 run scoreboard players get @s pZ

tag @s[tag=ground,tag=bounceX] remove bounceX
tag @s[tag=ground,tag=bounceY] remove bounceY
tag @s[tag=ground,tag=bounceZ] remove bounceZ
