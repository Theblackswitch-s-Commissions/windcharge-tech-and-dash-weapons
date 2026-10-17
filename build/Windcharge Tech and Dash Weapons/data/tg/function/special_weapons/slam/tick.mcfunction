execute if score @s slam_timer matches 1 run function tg:special_weapons/slam/tick/nested_execute_0
execute if score @s slam_timer matches 1.. run scoreboard players remove @s slam_timer 1
execute unless score @s slam_timer matches 1.. if entity @s[tag=slam_run] if predicate tg:on_ground run function tg:special_weapons/slam/tick/nested_execute_1
