#reset
scoreboard players reset @a[scores={cd_sound=1..}] cd_sound
execute as @a store result score @s cd_levels run data get entity @s XpLevel
#anvil
execute as @a[nbt={Inventory:[{tag:{RepairCost:1,durability:{}}}]}] run function uses:anvil
execute as @e[type=item,tag=!centered,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-1 ~ #minecraft:anvil align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=item,tag=!centered,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-1 ~ #minecraft:anvil run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute as @e[type=item,tag=!centered,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-1 ~ #minecraft:anvil run tag @s add centered
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-0.5 ~ #minecraft:anvil if entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] run data modify entity @s Item.tag.durability.repairItems append from entity @s Item.tag.durability.repairItems[0]
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-0.5 ~ #minecraft:anvil if entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] run data modify entity @s Item.tag.durability.repairItems[0] set from entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] Item
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-0.5 ~ #minecraft:anvil if entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] store result score @s cd_Uses run data modify entity @s Item.tag.durability.repairItems[0] merge from entity @s Item.tag.durability.repairItems[-1].nbt
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}}] at @s if block ~ ~-0.5 ~ #minecraft:anvil if entity @e[type=item,sort=nearest,limit=1,distance=0.01..1] run data remove entity @s Item.tag.durability.repairItems[0]
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}},scores={cd_Uses=0}] at @s if entity @e[type=item,tag=urepair,distance=..3] run scoreboard players reset @s cd_Uses
execute as @e[type=item,tag=!urepair,nbt={Item:{tag:{durability:{}}}},scores={cd_Uses=0}] run function uses:rsetup
execute as @e[type=item,tag=urepair] at @s if entity @e[type=item,tag=!irepair,tag=!nrepair,distance=0.01..1,nbt={Item:{Count:1b}}] unless entity @e[type=item,sort=nearest,tag=irepair,distance=0.01..1,nbt={Item:{Count:64b}}] run function uses:more
execute as @e[type=item,tag=urepair,scores={cd_sound=0}] run function uses:emore
execute as @e[type=item,tag=irepair] at @s unless entity @e[type=item,tag=urepair,distance=..0.5] run data merge entity @s {Tags:[],NoGravity:0b,CustomNameVisible:0b,PickupDelay:20}
execute as @e[type=item,tag=urepair] at @s if entity @a[distance=..4,scores={cd_sneak=1..}] run scoreboard players operation @p[distance=..4,scores={cd_sneak=1..}] cd_ulevel += @p[distance=..4,scores={cd_sneak=1..}] cd_levels
execute as @e[type=item,tag=urepair] at @s if score @s cd_ulevel <= @p[distance=..4,scores={cd_sneak=1..}] cd_ulevel run tag @s add repairing
execute as @e[type=item,tag=urepair] at @s if entity @a[distance=..4,scores={cd_sneak=1..}] run scoreboard players operation @p[distance=..4,scores={cd_sneak=1..}] cd_ulevel -= @p[distance=..4,scores={cd_sneak=1..}] cd_levels
execute as @e[type=item,tag=urepair,tag=repairing] run function uses:repair

scoreboard players reset @a[scores={cd_sneak=1..}] cd_sneak
tag @a[tag=rlevel,scores={cd_ulevel=0}] remove rlevel
tag @a[tag=!rlevel,scores={cd_ulevel=..-1}] add rlevel
scoreboard players add @a[tag=rlevel,scores={cd_levels=1..}] cd_ulevel 1
xp add @a[tag=rlevel,scores={cd_levels=1..}] -1 levels

#mainhand
execute as @a[nbt={SelectedItem:{tag:{durability:{}}}}] store result score @s cd_Uses run data get entity @s SelectedItem.tag.Damage
scoreboard players add @a[scores={cd_ucoas=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{durability:{}}}}] cd_Uses 1
execute as @a[scores={cd_dMain=-1000..}] run scoreboard players operation @s cd_Uses += @s cd_dMain
execute as @a[nbt={SelectedItem:{tag:{durability:{}}}}] store result score @s cd_mUses run data get entity @s SelectedItem.tag.durability.prevUses
execute as @a[nbt={SelectedItem:{tag:{durability:{}}}}] unless score @s cd_Uses = @s cd_mUses run function uses:mainhand
#offhand
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{durability:{}}}]}] store result score @s cd_Uses run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute as @a[scores={cd_ucoas=1..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{durability:{}}}]}] cd_Uses 1
execute as @a[scores={cd_dOff=-1000..}] run scoreboard players operation @s cd_Uses += @s cd_dOff
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{durability:{}}}]}] store result score @s cd_mUses run data get entity @s Inventory[{Slot:-106b}].tag.durability.prevUses
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{durability:{}}}]}] unless score @s cd_Uses = @s cd_mUses run function uses:offhand

scoreboard players reset @a[scores={cd_ucoas=1..}] cd_ucoas
scoreboard players reset @a[scores={cd_dMain=-1000..}] cd_dMain
scoreboard players reset @a[scores={cd_dOff=-1000..}] cd_dOff
#armor
execute as @a[scores={cd_dtaken=0..}] run function uses:armor
