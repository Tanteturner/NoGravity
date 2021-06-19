#sound and particles
playsound minecraft:entity.witch.throw master @a ~ ~ ~ 0.4 0 1
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.1 2

#gravity cost
scoreboard players remove @s gravity 2
scoreboard players add @s gravity_regen_cd 30

say force_push

tag @s add force_pushing
execute as @e[distance=..4,type=#game:force_pushable,type=!#game:projectiles] at @s anchored feet facing entity @p[tag=force_pushing] feet run summon minecraft:marker ^ ^0.4 ^-1.5 {Tags:["p_anchor","tickkill"]}
execute as @e[distance=..4,type=#game:projectiles] at @s anchored eyes facing entity @e[type=#game:monsters,sort=nearest,limit=1] eyes run summon minecraft:marker ^ ^ ^1.5 {Tags:["p_anchor","tickkill"]}

execute as @e[distance=..4,type=#game:force_pushable] run function p:motion

tag @s remove force_pushing

execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["p_anchor","tickkill"]}

#to copy your UUID to the Entity, use this function and target the spawned entities:
execute at @e[tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] run function p:uuid
