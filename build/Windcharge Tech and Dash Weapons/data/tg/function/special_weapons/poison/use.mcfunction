advancement revoke @s only tg:_event/use_poison_weapon
particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 0.5 1
playsound minecraft:block.sculk.hit master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 0.2 0.8
function tg:special_weapons/poison/launch_run
tag @s add doing_a_poison_dash
tag @s add launching
scoreboard players set @s poison_timer 0
execute if items entity @s weapon.mainhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped
execute if entity @s[gamemode=survival] run tag @s add GIVE_BACK
execute if entity @s[gamemode=adventure] run tag @s add GIVE_BACK
