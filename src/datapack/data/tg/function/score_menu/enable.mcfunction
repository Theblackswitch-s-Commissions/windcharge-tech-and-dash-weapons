kill @e[type=minecraft:text_display,tag=score_menu,tag=!main]
execute as @e[type=minecraft:text_display,tag=score_menu,tag=main] at @s rotated as @s:
    kill @s
    function tg:score_menu/place
    execute as @e[type=minecraft:text_display,tag=score_menu] run tp @s ~ ~ ~ ~ ~