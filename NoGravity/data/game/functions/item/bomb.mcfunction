playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2

execute anchored eyes run summon minecraft:marker ^ ^0.2 ^1 {Tags: ["p_anchor", "tickkill"]}
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomName: '{"text":"Bomb"}', Tags: ["bomb", "p"], Invisible: 1b, Silent: 1b, Invulnerable: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 3}}]}



scoreboard players set @e[tag=bomb,tag=!p_setup,distance=..2,sort=nearest,limit=1] pD 30
#to copy your UUID to the Entity, use this function and target the spawned entities:
execute at @e[tag=bomb,tag=!p_setup,distance=..3,limit=1] run function p:uuid
execute as @e[tag=bomb,tag=!p_setup,distance=..3,limit=1] run function p:motion

#replacitem item with cooldown item
item replace entity @s weapon.mainhand with air
