
execute as @e[type=marker,tag=place_score_menu_here] at @s positioned ~ ~1 ~:
    kill @s
    function tg:score_menu/place
    execute as @e[type=text_display,tag=score_menu] at @s rotated as @p rotated ~ -20:
        tp @s ~ ~ ~ ~180 ~
        execute if entity @s[y_rotation=-45..45] run return run tp @s ~ ~ ~ 0 ~
        execute if entity @s[y_rotation=45..135] run return run tp @s ~ ~ ~ 90 ~
        execute if entity @s[y_rotation=135..225] run return run tp @s ~ ~ ~ 180 ~
        execute if entity @s[y_rotation=225..315] run return run tp @s ~ ~ ~ 270 ~