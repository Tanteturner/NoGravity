#player input
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clickID dummy
scoreboard objectives add itemID dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add drop minecraft.custom:minecraft.drop

#player stats
scoreboard objectives add health health
scoreboard objectives add playerID dummy
scoreboard objectives add balls dummy
scoreboard objectives add alive minecraft.custom:minecraft.time_since_death

#block breaker stats
scoreboard objectives add destroy_delay dummy
scoreboard objectives add destroy_sound dummy

#setting important input stats
scoreboard players set @a sneak 0

#wooden sword
scoreboard objectives add craft_w_cube minecraft.crafted:minecraft.wooden_sword

#orb stats
scoreboard objectives add orbID dummy
scoreboard objectives add orb_rotation dummy
scoreboard objectives add found_block dummy

scoreboard objectives add orb_age dummy
scoreboard objectives add orb_max_age dummy
scoreboard objectives add orb_retreat dummy
scoreboard objectives add orb_max_retreat dummy

#forrest gauntlet
scoreboard objectives add gaunt_boost_time dummy

#location stats
scoreboard objectives add heightZone dummy

#mana system
scoreboard objectives add gravity dummy
scoreboard objectives add max_gravity dummy
scoreboard objectives add add_gravity dummy
scoreboard objectives add gravity_regen_cd minecraft.custom:play_time

#starting slow clocks
function #game:slowclock
