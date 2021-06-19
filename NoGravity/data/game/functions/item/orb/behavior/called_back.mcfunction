execute facing entity @p[tag=calling_back] eyes run summon minecraft:marker ^ ^ ^1.5 {Tags:["p_anchor","tickkill"]}
# orb executes p:motion
data merge entity @s {inGround:0b,PierceLevel:100b,Silent:1b}
function p:motion

#max_retreat
scoreboard players add @s orb_retreat 1
execute if score @s orb_retreat >= @s orb_max_retreat as @a if score @e[distance=0,tag=gravity_orb,limit=1] orbID = @s playerID run tp @e[distance=0,tag=gravity_orb,limit=1] @s

#orb getting back to inventory
execute positioned ~ ~-1.8 ~ if entity @a[distance=..4] if score @s orbID = @p[distance=..4] playerID run tag @s add orb_to_inv

execute positioned ~ ~-1.8 ~ as @s[tag=orb_to_inv] as @p[distance=..4] at @s run tp @e[type=item,distance=..5] @s
execute positioned ~ ~-1.8 ~ as @s[tag=orb_to_inv] as @p[distance=..4] at @s run function game:item/give/wooden_gravity_cube

#removing calling_back tag from player when orb gets put back into inventory
execute positioned ~ ~-1.8 ~ as @a[distance=..4] if score @e[distance=..2,tag=gravity_orb,limit=1] orbID = @s playerID run tag @s remove calling_back
execute positioned ~ ~-1.8 ~ as @s[tag=orb_to_inv] at @s run kill @e[tag=gravity_orb,limit=2,sort=nearest]
