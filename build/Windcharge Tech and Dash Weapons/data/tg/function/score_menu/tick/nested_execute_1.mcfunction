kill @s
function tg:score_menu/place
execute as @e[type=text_display, tag=score_menu] at @s rotated as @p rotated ~ -20 run function tg:score_menu/tick/nested_execute_0
