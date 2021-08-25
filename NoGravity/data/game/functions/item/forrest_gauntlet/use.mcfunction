effect give @s levitation 1 70 true

playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~
playsound minecraft:block.conduit.activate master @a ~ ~ ~
#playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5

particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.1 50

scoreboard players set @s gaunt_boost_time 3