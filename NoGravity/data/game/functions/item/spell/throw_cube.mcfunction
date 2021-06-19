playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 0.8

execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["p_anchor"]}
execute anchored eyes run summon minecraft:arrow ^ ^ ^ {CustomName:'{"text":"Gravity Orb"}',Color:-1,Tags:["gravity_orb","p","retreat_on_ground","retreat_on_hit","grab_items","destroy_foliage"],damage:5.0d,PierceLevel:100b,Silent:1b,Invulnerable:1b,NoGravity:1b,OwnerUUIDLeast:0,OwnerUUIDMost:0,Passengers:[{id:"minecraft:armor_stand",Tags:["gravity_orb","p"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}]}]}

execute as @s[scores={sneak=1..}] run tag @e[type=arrow,tag=gravity_orb,limit=1,sort=nearest] add block_breaker
execute as @s[scores={sneak=1..}] run tag @e[type=arrow,tag=gravity_orb,limit=1,sort=nearest] remove retreat_on_ground
execute as @s[scores={sneak=1..}] run data merge entity @e[type=armor_stand,tag=gravity_orb,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}]}

#gravity cost
scoreboard players remove @s gravity 4
scoreboard players add @s[scores={sneak=1..}] gravity 2
scoreboard players set @s gravity_regen_cd -30

#max age and max retreat time
execute anchored eyes run scoreboard players set @e[type=arrow,tag=!p_setup,tag=gravity_orb,limit=1,sort=nearest,distance=..3] orb_max_age 20
execute anchored eyes run scoreboard players set @e[type=arrow,tag=!p_setup,tag=gravity_orb,limit=1,sort=nearest,distance=..3] orb_max_retreat 100
execute as @s[scores={sneak=1..}] anchored eyes run scoreboard players set @e[type=arrow,tag=!p_setup,tag=gravity_orb,limit=1,sort=nearest,distance=..3] orb_max_age 10

#copy PlayerID onto OrbID
scoreboard players operation @e[type=arrow,tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] orbID = @s playerID
scoreboard players operation @e[type=armor_stand,tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] orbID = @s playerID

#to copy your UUID to the Entity, use this function and target the spawned entities:
execute at @e[tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] run function p:uuid
execute as @e[tag=gravity_orb,tag=!p_setup,distance=..3,limit=1] run function p:motion

#replacitem item with cooldown item
function game:item/give/wooden_gravity_cube_off
