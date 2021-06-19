execute at @e[limit=1,sort=nearest,distance=..3,nbt={HurtTime:10s}] run tag @s add called_back
execute as @s[tag=called_back] as @a if score @e[distance=0,tag=gravity_orb,limit=1] orbID = @s playerID run tag @s add calling_back
