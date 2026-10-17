function tg:special_weapons/slam/tick
function tg:special_weapons/poison/tick
function tg:special_weapons/double_dash/tick
execute if items entity @s weapon.mainhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped
execute if entity @s[tag=GIVE_BACK] run function tg:special_weapons/tick/nested_execute_1
