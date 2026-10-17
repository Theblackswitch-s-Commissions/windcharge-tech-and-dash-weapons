scoreboard players set #100 temp 100

scoreboard players operation #success_rate temp = #correct score_menu
scoreboard players operation #success_rate temp *= #100 temp
scoreboard players operation #success_rate temp /= #total score_menu
    
data modify storage tg:temp color set value "white"

execute:
    execute if score #success_rate temp matches ..50 run return run data modify storage tg:temp color set value "red"
    execute if score #success_rate temp matches ..60 run return run data modify storage tg:temp color set value "gold"
    execute if score #success_rate temp matches ..70 run return run data modify storage tg:temp color set value "yellow"
    data modify storage tg:temp color set value "green"


execute unless score #streak score_menu <= #record score_menu run scoreboard players operation #record score_menu = #streak score_menu

execute store result storage tg:temp streak int 1 run scoreboard players get #streak score_menu
execute store result storage tg:temp record int 1 run scoreboard players get #record score_menu
execute store result storage tg:temp success_rate int 1 run scoreboard players get #success_rate temp
execute store result storage tg:temp total int 1 run scoreboard players get #total score_menu

with storage tg:temp:
    $data modify entity @n[type=text_display,tag=score_menu,tag=streak_counter] text set value {"text": "$(streak)", "color": "gold"}
    $data modify entity @n[type=text_display,tag=score_menu,tag=total] text set value {"text": "$(total)", "color": "gold"}
    $data modify entity @n[type=text_display,tag=score_menu,tag=success_rate] text set value {"text": "$(success_rate)%", "color": "$(color)"}
    $data modify entity @n[type=text_display,tag=score_menu,tag=streak_record] text set value {"text": "$(record)", "color": "gold"}
