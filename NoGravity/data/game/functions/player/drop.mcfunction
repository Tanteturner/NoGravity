execute as @e[distance=..6,type=item,nbt={Item:{tag:{back_to_inv:1}}}] run tp @p[scores={drop=1..}]
execute as @e[distance=..6,type=item,nbt={Item:{tag:{back_to_inv:1}}}] run data merge entity @s {PickupDelay:0}
