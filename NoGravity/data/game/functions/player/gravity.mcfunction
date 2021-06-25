#execute if score @s gravity > @s health run scoreboard players operation @s gravity = @s health
tag @s[tag=out_of_gravity,nbt={OnGround: 1b}] remove out_of_gravity

effect give @s[tag=out_of_gravity] minecraft:weakness 1 0 false
effect clear @s[tag=!out_of_gravity] minecraft:weakness

execute if score @s[gamemode=!creative] gravity matches ..-1 run effect give @s levitation 1 2 true
execute if score @s gravity matches 1 run effect clear @s levitation
