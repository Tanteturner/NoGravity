scoreboard objectives add cd_mUses dummy
scoreboard objectives add cd_Uses dummy
scoreboard objectives add cd_dtaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add cd_sound dummy
scoreboard objectives add cd_ucoas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add cd_levels dummy
scoreboard objectives add cd_ulevel dummy
scoreboard objectives add cd_sneak minecraft.custom:minecraft.sneak_time
scoreboard players set #100 cd_Uses 100
scoreboard players set #2 cd_Uses 2
scoreboard players set #8 cd_Uses 8
fill ~1 0 ~1 ~-1 3 ~-1 bedrock hollow
setblock ~ 1 ~ oak_sign replace
setblock ~ 2 ~ yellow_shulker_box{Items:[{id:"minecraft:dirt",Count:1b}]}
schedule function uses:ua 60s replace

scoreboard objectives add cd_dMain dummy
scoreboard objectives add cd_dOff dummy
