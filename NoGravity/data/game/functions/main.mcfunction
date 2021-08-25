execute as @a run function game:set_stats
#items get nogravity
execute as @a at @s as @e[type=item,distance=..16,limit=2,tag=!noGravSet] at @s run data merge entity @s {NoGravity: 1b, Tags: ["noGravSet"]}

execute as @a at @s run function game:player/gravity
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function game:player/display_stamina
execute as @a[scores={gravity_regen_cd=0..}] at @s run function game:player/gravity_regen

#item abilities
execute as @a[tag=!out_of_gravity,scores={click=1..,clickID=1}] at @s run function game:item/spell/throw_cube
execute as @a[scores={click=1..,clickID=2}] at @s run function game:item/orb/retrieve

execute as @a[scores={click=1..,clickID=4}] at @s run function game:item/bomb
execute as @e[type=armor_stand,tag=bomb] at @s run function game:entity/bomb

execute as @a[scores={click=1..,clickID=4}] at @s run function game:item/yoyo
execute as @e[type=arrow,tag=yoyo] at @s run function game:entity/yoyo

execute as @a[tag=onGround,scores={click=1..,clickID=7}] at @s run function game:item/forrest_gauntlet/use

execute as @a at @s run function game:item/spell/dreamcatcher

#dropping items
execute as @a[scores={drop=1..}] at @s run function game:player/drop

#crafting gravity orb
clear @a[scores={craft_w_cube=1..}] wooden_sword 1
execute as @a[scores={craft_w_cube=1..}] at @s run function game:item/give/wooden_gravity_cube
scoreboard players reset @a[scores={craft_w_cube=1..}] craft_w_cube

#orb behaviors
execute as @e[type=arrow,tag=p,tag=gravity_orb] at @s run function game:item/orb/behavior/usual

execute as @e[type=armor_stand,tag=p,tag=gravity_orb] at @s unless entity @e[type=arrow,tag=p,tag=gravity_orb,distance=..1] run kill @s

#gauntlet behaviors
execute as @a[scores={gaunt_boost_time=1..}] run function game:item/forrest_gauntlet/boost

#entity behavior
execute as @e[type=armor_stand,tag=block_breaker] at @s run function game:entity/block_breaker

#blocks
execute as @e[type=item_frame,tag=lumina_setup] at @s run function game:block/lumina/set

#movement
execute as @a[scores={sneak=1..}] at @s rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ #game:nonsolid if block ~ ~-1 ~ #game:nonsolid unless entity @e[type=shulker,tag=crouch_shulker,distance=..1] run summon minecraft:shulker ~ ~ ~ {NoAI: 1b, Silent: 1b, Color: 0, Tags: ["crouch_shulker"], Invulnerable: 1b, DeathLootTable: ""}
execute as @e[type=shulker,tag=crouch_shulker] at @s unless entity @p[distance=..2] run kill @s
execute as @a at @s if block ~ ~ ~ minecraft:lily_pad run effect give @s minecraft:jump_boost 1 6
execute as @a at @s if block ~ ~-1 ~ minecraft:lily_pad run effect give @s minecraft:jump_boost 1 6
execute as @a at @s if block ~ ~-2 ~ minecraft:lily_pad run effect give @s minecraft:jump_boost 1 6

#blocks
execute as @e[type=arrow,tag=gravity_orb,nbt={inBlockState: {Name: "minecraft:dispenser"}}] at @s run function game:item/orb/block/dispenser

#out ot gravity sound
execute as @a[scores={click=1..,gravity=..-1}] at @s run playsound minecraft:block.bubble_column.whirlpool_inside master @a ~ ~ ~ 0.4 0
execute as @a[scores={click=1..,gravity=..-1}] at @s run tag @s add out_of_gravity
tag @a[gamemode=creative,tag=out_of_gravity] remove out_of_gravity

#input reset
scoreboard players set @a[scores={click=1..}] click 0
scoreboard players set @a[scores={sneak=1..}] sneak 0

#Gliding
execute as @a[tag=glide] at @s run function game:player/glide/glide
execute as @a[tag=onGround] run function game:player/glide/stop
execute as @a[tag=climbing] run function game:player/glide/stop

#get hats (temporary)
function game:gethat