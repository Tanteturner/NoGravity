#sound and particles
#playsound minecraft:entity.witch.throw master @a ~ ~ ~ 0.4 0 1
#playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.1 2

#gravity cost
#scoreboard players remove @s gravity 2
#scoreboard players set @s gravity_regen_cd -30

execute as @e[distance=..3,type=#game:projectiles] run data modify entity @s Motion set from entity @s Motion

#execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["p_anchor","tickkill"]}

#to copy your UUID to the Entity, use this function and target the spawned entities:
#execute at @e[tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] run function p:uuid
