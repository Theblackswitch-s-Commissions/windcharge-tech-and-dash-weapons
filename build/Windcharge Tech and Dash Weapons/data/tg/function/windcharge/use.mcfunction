scoreboard players set @s use_windcharge 0
execute unless score #windcharge_enabled tbs.server_data matches 1 run return fail
execute if score @s motion_y matches ..-250 if predicate tg:above_ground if entity @s[x_rotation=70..] run function tg:windcharge/use/nested_execute_0
