data modify block 0 1 0 Items set from storage crafting Check

data modify storage crafting LegalItems set value []
data modify storage crafting LegalItems append from storage crafting Items[{Slot:1b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:2b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:3b}]

data modify storage crafting LegalItems append from storage crafting Items[{Slot:10b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:11b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:12b}]

data modify storage crafting LegalItems append from storage crafting Items[{Slot:19b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:20b}]
data modify storage crafting LegalItems append from storage crafting Items[{Slot:21b}]

data modify block ~ ~ ~ Items set from storage crafting LegalItems

item replace block ~ ~ ~ container.0 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.4 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.5 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.6 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.7 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.8 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.9 with flint{CustomModelData:3}

item replace block ~ ~ ~ container.13 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.14 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.15 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.16 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.17 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.18 with flint{CustomModelData:3}

item replace block ~ ~ ~ container.22 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.23 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.24 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.25 with flint{CustomModelData:3}
item replace block ~ ~ ~ container.26 with flint{CustomModelData:3}

loot insert ~ ~ ~ mine 0 1 0 air{drop_contents:1b}

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air
item replace block ~ ~ ~ container.8 with air
item replace block ~ ~ ~ container.9 with air

item replace block ~ ~ ~ container.13 with air
item replace block ~ ~ ~ container.14 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.16 with air
item replace block ~ ~ ~ container.17 with air
item replace block ~ ~ ~ container.18 with air

item replace block ~ ~ ~ container.22 with air
item replace block ~ ~ ~ container.23 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.25 with air
item replace block ~ ~ ~ container.26 with air

data modify block 0 2 0 Items set from storage crafting LegalItems
data modify block 0 2 0 Items[0].Slot set value 0b
data modify block 0 2 0 Items[1].Slot set value 1b
data modify block 0 2 0 Items[2].Slot set value 2b
data modify block 0 2 0 Items[3].Slot set value 3b
data modify block 0 2 0 Items[4].Slot set value 4b
data modify block 0 2 0 Items[5].Slot set value 5b
data modify block 0 2 0 Items[6].Slot set value 6b
data modify block 0 2 0 Items[7].Slot set value 7b
data modify block 0 2 0 Items[8].Slot set value 8b

loot insert 0 2 0 mine 0 1 0 air{drop_contents:1b}

execute store success score success crafting run data get block 0 2 0 Items[9]
execute if score success crafting matches 1 run function game:crafting/drop_rest
