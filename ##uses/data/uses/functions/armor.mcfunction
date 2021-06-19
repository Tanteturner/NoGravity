#helmet
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{durability:{}}}]}] store result score @s cd_Uses run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{durability:{}}}]}] store result score @s cd_mUses run data get entity @s Inventory[{Slot:103b}].tag.durability.prevUses
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{durability:{}}}]}] unless score @s cd_Uses = @s cd_mUses run function uses:head
#chestplate
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{durability:{}}}]}] store result score @s cd_Uses run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{durability:{}}}]}] store result score @s cd_mUses run data get entity @s Inventory[{Slot:102b}].tag.durability.prevUses
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{durability:{}}}]}] unless score @s cd_Uses = @s cd_mUses run function uses:chest
#leggings
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{durability:{}}}]}] store result score @s cd_Uses run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{durability:{}}}]}] store result score @s cd_mUses run data get entity @s Inventory[{Slot:101b}].tag.durability.prevUses
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{durability:{}}}]}] unless score @s cd_Uses = @s cd_mUses run function uses:legs
#boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{durability:{}}}]}] store result score @s cd_Uses run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{durability:{}}}]}] store result score @s cd_mUses run data get entity @s Inventory[{Slot:100b}].tag.durability.prevUses
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{durability:{}}}]}] unless score @s cd_Uses = @s cd_mUses run function uses:feet

scoreboard players reset @s cd_dtaken
schedule function uses:ua 60s replace
