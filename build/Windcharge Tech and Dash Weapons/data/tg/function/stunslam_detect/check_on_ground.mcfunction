execute if predicate tg:on_ground run scoreboard players add @s onground_timer 1
execute unless predicate tg:on_ground run scoreboard players set @s onground_timer 0
execute if score @s onground_timer matches ..10 run function tg:stunslam_detect/fail
execute if score @s motion_y matches 15000.. run function tg:stunslam_detect/check_on_ground/nested_execute_0
