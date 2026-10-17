scoreboard players set #streak score_menu 0
scoreboard players set #total score_menu 0
scoreboard players set #correct score_menu 0
scoreboard players set #record score_menu 0

data modify entity @n[type=text_display,tag=score_menu,tag=streak_counter] text set value {"text": "0", "color": "gold"}
data modify entity @n[type=text_display,tag=score_menu,tag=total] text set value {"text": "0", "color": "gold"}
data modify entity @n[type=text_display,tag=score_menu,tag=success_rate] text set value {"text": "NaN", "color": "green"}