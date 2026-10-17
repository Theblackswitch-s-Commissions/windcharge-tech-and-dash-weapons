scoreboard players add #correct score_menu 1
scoreboard players add #streak score_menu 1
scoreboard players add #total score_menu 1
function tg:score_menu/update
scoreboard players set #10 temp 10
scoreboard players operation #streak_10 temp = #streak score_menu
scoreboard players operation #streak_10 temp %= #10 temp
execute if score #streak_10 temp matches 0 run function tg:score_menu/incr_score/nested_execute_0
execute if score #streak_10 temp matches 1.. run function tg:score_menu/incr_score/nested_execute_1
execute as @n[type=text_display, tag=streak_counter] run function tg:score_menu/incr_score/nested_execute_2
