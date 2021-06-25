playsound minecraft:entity.blaze.shoot master @a
#spawn an area effect cloud in front of your eyes
#spawning it at ^ ^ ^1 makes the projectile exactly 1 block/s fast and the damage scales 100%
#spawning it further away makes the projectile faster and scales the damage up.
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags: ["p_anchor", "tickkill"]}
#now spawn the projectile with the p tag. aditional tags can be used:
# - fragile: makes the projectile dissappear when hitting the ground
# - bounce: makes the projectile bounce off walls / the ground
# - rocket: constanty resets the projectile to the motion it spawned with
execute anchored eyes run summon minecraft:arrow ^ ^ ^ {pickup: 1b, damage: 4d, Tags: ["bounce", "ptest", "p"], Color: -1, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}
execute anchored eyes run summon minecraft:arrow ^0.3 ^ ^ {pickup: 1b, damage: 4d, Tags: ["bounce", "ptest", "p"], Color: -1, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}
execute anchored eyes run summon minecraft:arrow ^-0.3 ^ ^ {pickup: 1b, damage: 4d, Tags: ["bounce", "ptest", "p"], Color: -1, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}
execute anchored eyes run summon minecraft:arrow ^0.15 ^ ^ {pickup: 1b, damage: 4d, Tags: ["bounce", "ptest", "p"], Color: -1, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}
execute anchored eyes run summon minecraft:arrow ^-0.15 ^ ^ {pickup: 1b, damage: 4d, Tags: ["bounce", "ptest", "p"], Color: -1, OwnerUUIDLeast: 0, OwnerUUIDMost: 0}

#if you want projectiles to dissappear regularly, just dont set the pD value
scoreboard players set @e[tag=ptest,tag=!p_setup,distance=..3,sort=nearest,limit=5] pD 100
#to copy your UUID to the Entity, use this function and target the spawned entities:
execute at @e[tag=ptest,tag=!p_setup,distance=..3,limit=5] run function p:uuid
execute as @e[tag=ptest,tag=!p_setup,distance=..3,limit=5] run function p:motion
