data modify storage cd update set from entity @s Inventory[{Slot:103b}]
data remove storage cd update.Slot
data modify block ~ 2 ~ Items[0] set from storage cd update
function uses:update
item replace entity @s[tag=cd_clear] armor.head with air
loot replace entity @s[tag=!cd_clear] armor.head 1 mine ~ 2 ~ air{drop_contents:1b}
tag @a[tag=cd_clear] remove cd_clear