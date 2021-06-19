scoreboard players operation @s cd_mUses -= @s cd_Uses
execute store result score @s cd_Uses run data get block ~ 2 ~ Items[0].tag.durability.Uses
scoreboard players operation @s cd_Uses += @s cd_mUses
execute store result score @s cd_mUses run data get block ~ 2 ~ Items[0].tag.durability.maxUses
execute if score @s cd_Uses > @s cd_mUses run scoreboard players operation @s cd_Uses = @s cd_mUses
execute if score @s cd_Uses matches ..0 store result score @s cd_sound run data get block ~ 2 ~ Items[0].tag.durability.Sound
execute if score @s cd_Uses matches ..0 unless data block ~ 2 ~ Items[0].tag.durability.Sound at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1
execute if score @s cd_Uses matches ..0 unless data block ~ 2 ~ Items[0].tag.durability.Unbreakable run tag @s add cd_clear
execute if score @s cd_Uses matches ..0 if data block ~ 2 ~ Items[0].tag.durability.Unbreakable run scoreboard players set @s cd_Uses 0
execute store result block ~ 2 ~ Items[0].tag.durability.Uses short 1 run scoreboard players get @s cd_Uses
scoreboard players operation @s cd_Uses *= #100 cd_Uses
scoreboard players operation @s cd_Uses /= @s cd_mUses
execute store result score @s cd_mUses run data get block ~ 2 ~ Items[0].tag.durability.realUses
scoreboard players operation @s cd_Uses *= @s cd_mUses
scoreboard players operation @s cd_Uses /= #100 cd_Uses
scoreboard players operation @s cd_mUses -= @s cd_Uses
execute store result score @s cd_Uses run data get block ~ 2 ~ Items[0].tag.durability.realUses
execute if score @s cd_Uses <= @s cd_mUses run scoreboard players operation @s mUses = @s Uses
execute store result block ~ 2 ~ Items[0].tag.Damage int 1 run scoreboard players get @s cd_mUses
execute store result block ~ 2 ~ Items[0].tag.durability.prevUses short 1 run scoreboard players get @s cd_mUses
execute store result score uses cd_Uses run data get block ~ 2 ~ Items[0].tag.durability.maxUses
execute store result score uses cd_mUses run data get block ~ 2 ~ Items[0].tag.durability.Uses
data merge block ~ 1 ~ {Text1:"[\"\",{\"text\":\"Durability: \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_mUses\"},\"color\":\"white\",\"italic\":\"false\"},{\"text\":\" / \",\"color\":\"white\",\"italic\":\"false\"},{\"score\":{\"name\":\"uses\",\"objective\":\"cd_Uses\"},\"color\":\"white\",\"italic\":\"false\"}]"}
data modify block ~ 2 ~ Items[0].tag.display.Lore[0] set from block ~ 1 ~ Text1
data modify block ~ 2 ~ Items[0].tag.durability.update set value false
