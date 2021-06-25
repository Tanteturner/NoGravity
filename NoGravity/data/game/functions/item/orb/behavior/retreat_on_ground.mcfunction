tag @s[nbt={inGround: 1b}] add called_back
execute as @s[tag=called_back] as @a if score @e[distance=0,tag=gravity_orb,limit=1] orbID = @s playerID run tag @s add calling_back
