#playsound minecraft:block.note_block.chime player @s[scores={gravity=0}] ~ ~ ~ 0.6 2
execute if score @s gravity matches ..-1 run scoreboard players add @s gravity 1
execute if score @s[tag=!out_of_gravity] gravity matches 0..19 run scoreboard players add @s gravity 1

scoreboard players set @s[scores={gravity=1..}] gravity_regen_cd -10
scoreboard players set @s[scores={gravity=..0}] gravity_regen_cd -20
