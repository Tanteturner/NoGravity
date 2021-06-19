playsound minecraft:entity.witch.throw master @a ~ ~ ~ 0.4 0 1

#retrieve:
#id comparison
#orb gets retrieve tag
tag @s add calling_back
execute as @e[type=arrow,tag=gravity_orb] if score @s orbID = @p[tag=calling_back] playerID run tag @s add called_back
