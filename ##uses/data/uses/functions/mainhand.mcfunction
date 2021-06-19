data modify block ~ 2 ~ Items[0] set from entity @s SelectedItem
function uses:update
item replace entity @s[tag=cd_clear] weapon.mainhand with air
loot replace entity @s[tag=!cd_clear] weapon.mainhand 1 mine ~ 2 ~ air{drop_contents:1b}
tag @a[tag=cd_clear] remove cd_clear
