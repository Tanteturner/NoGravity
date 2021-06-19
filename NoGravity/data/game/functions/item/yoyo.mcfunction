
execute anchored eyes run summon minecraft:marker ^ ^ ^2 {Tags:["p_anchor","tickkill"]}
execute anchored eyes run summon minecraft:arrow ^ ^ ^ {CustomName:'{"text":"Yo-Yo"}',Color:-1,Tags:["yoyo","p"],damage:4.0d,PierceLevel:100b,Silent:1b,Invulnerable:1b,NoGravity:1b,OwnerUUIDLeast:0,OwnerUUIDMost:0,Passengers:[{id:"minecraft:armor_stand",Tags:["yoyo","p"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}]}]}

execute anchored eyes run data modify entity @e[type=armor_stand,tag=yoyo,tag=!p_setup,distance=..3,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]

scoreboard players set @e[tag=yoyo,type=arrow,tag=!p_setup,distance=..3,sort=nearest,limit=1] pD 40

execute at @e[tag=yoyo,tag=!p_setup,distance=..3,limit=1] run function p:uuid
execute as @e[tag=yoyo,tag=!p_setup,distance=..3,limit=1] run function p:motion

#playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2

#execute anchored eyes run summon minecraft:marker ^ ^0.2 ^1 {Tags:["p_anchor"]}
#execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomName:'{"text":"Bomb"}',Tags:["bomb","p"],Invisible:1b,Silent:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}]}

#scoreboard players set @e[tag=bomb,tag=!p_setup,distance=..2,sort=nearest,limit=1] pD 40
#to copy your UUID to the Entity, use this function and target the spawned entities:
#execute at @e[tag=bomb,tag=!p_setup,distance=..3,limit=1] run function p:uuid
#execute as @e[tag=bomb,tag=!p_setup,distance=..3,limit=1] run function p:motion

#replacitem item with cooldown item
#replaceitem entity @s weapon.mainhand air
