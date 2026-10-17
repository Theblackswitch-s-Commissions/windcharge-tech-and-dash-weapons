kill @e[type=minecraft:text_display, tag=score_menu, tag=!main]
execute as @e[type=minecraft:text_display, tag=score_menu, tag=main] at @s rotated as @s run function tg:score_menu/enable/nested_execute_0
