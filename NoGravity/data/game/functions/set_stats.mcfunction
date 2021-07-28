#item ids
execute as @a[scores={click=1..}] store result score @s clickID run data get entity @s SelectedItem.tag.CustomModelData
execute as @a[scores={click=1..,clickID=0}] store result score @s clickID run data get entity @s Inventory[{Slot: -106b}].tag.CustomModelData


execute as @a[scores={alive=..1}] run scoreboard players set @s gravity 20
effect clear @a[scores={alive=..1}] levitation

#mana
#execute store result score @s gravity run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{durability:{}}}].tag.durability.Uses
#execute store result score @s max_gravity run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{durability:{}}}].tag.durability.maxUses

#ball amount
#execute as @a store result score @s balls run clear @s minecraft:carrot_on_a_stick{CustomModelData:1} 0

tag @a remove onGround
execute as @a at @s unless block ~ ~-0.0001 ~ #game:nonsolid run tag @s add onGround

tag @a remove climbing
execute as @a at @s if block ~ ~ ~ #minecraft:climbable run tag @s add climbing

#height zone
scoreboard players set @a[predicate=game:height/crystal_caves] heightZone -3
scoreboard players set @a[predicate=game:height/deep_caves] heightZone -2
scoreboard players set @a[predicate=game:height/caves] heightZone -1
scoreboard players set @a[predicate=game:height/normal_gravity] heightZone 0
scoreboard players set @a[predicate=game:height/low_gravity] heightZone 1
scoreboard players set @a[predicate=game:height/ultra_low_gravity] heightZone 2
scoreboard players set @a[predicate=game:height/no_gravity] heightZone 3
