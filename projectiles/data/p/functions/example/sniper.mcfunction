playsound minecraft:entity.blaze.shoot master @a
#spawn an area effect cloud in front of your eyes
#spawning it at ^ ^ ^1 makes the projectile exactly 1 block/s fast and the damage scales 100%
#spawning it further away makes the projectile faster and scales the damage up.
execute anchored eyes run summon minecraft:marker ^ ^ ^10 {Tags: ["p_anchor", "tickkill"]}
#now spawn the projectile with the p tag. aditional tags can be used:
# - fragile: makes the projectile dissappear when hitting the ground
# - bounce: makes the projectile bounce off walls / the ground
# - rocket: constanty resets the projectile to the motion it spawned with
# info: 0.5d Damage with ^ ^ ^10 = 5 Damage!
execute anchored eyes run summon minecraft:arrow ^ ^ ^ {NoGravity: 1b, damage: 0.5d, Tags: ["ptest", "p", "fragile"], Color: -1, Silent: 1b, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}

#pD score sets how long a projectile should be alive
scoreboard players set @e[tag=ptest,tag=!p_setup,distance=..2,sort=nearest,limit=1] pD 50
#to copy your UUID to the Entity, use this function and target the spawned entities:
execute at @e[tag=ptest,tag=!p_setup,distance=..2,limit=1] run function p:uuid
execute as @e[tag=ptest,tag=!p_setup,distance=..2,limit=1] run function p:motion
