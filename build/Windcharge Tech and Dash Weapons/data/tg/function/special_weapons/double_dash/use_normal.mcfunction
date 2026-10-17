advancement revoke @s only tg:_event/use_double_dash_weapon_normal
particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.04 5
playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.5 1
function tg:special_weapons/dash/launch_run
execute if items entity @s weapon.mainhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped
item modify entity @s armor.body tg:disable_cooldown
execute if items entity @s weapon.mainhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s weapon.offhand with air
execute if entity @s[gamemode=survival] run tag @s add GIVE_BACK
execute if entity @s[gamemode=adventure] run tag @s add GIVE_BACK
