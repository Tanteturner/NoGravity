#grabbing items with the orb
execute if entity @e[type=item,tag=!grabbed_item,distance=..3] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.4 2
execute as @e[type=item,distance=..3] run data modify entity @s Motion set from entity @e[type=arrow,distance=..2,limit=1] Motion
execute if entity @s[nbt={inGround:1b}] as @e[type=item,distance=..3] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @e[type=item,distance=..3] run data modify entity @s Pos set from entity @e[type=arrow,distance=..2,limit=1] Pos
execute as @e[type=item,distance=..3] run data merge entity @s {PickupDelay:0s}
tag @e[type=item,distance=..3] add grabbed_item
