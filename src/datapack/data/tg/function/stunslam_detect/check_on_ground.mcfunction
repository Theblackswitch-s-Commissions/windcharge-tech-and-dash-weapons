
execute if predicate tg:on_ground run scoreboard players add @s onground_timer 1
execute unless predicate tg:on_ground run scoreboard players set @s onground_timer 0

# Detect when the player just stays on the ground
execute if score @s onground_timer matches ..10 run function tg:stunslam_detect/fail

# Detect a teleport
execute if score @s motion_y matches 15000..:
    function tg:stunslam_detect/fail
    tag @s add new_round