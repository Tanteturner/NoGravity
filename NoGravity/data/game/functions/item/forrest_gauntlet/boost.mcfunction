scoreboard players remove @s gaunt_boost_time 1
execute if score @s gaunt_boost_time matches ..0 run effect clear @s levitation
execute if score @s gaunt_boost_time matches ..0 run tag @s add glide
