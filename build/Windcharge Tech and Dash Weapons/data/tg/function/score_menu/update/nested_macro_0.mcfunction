$data modify entity @n[type=text_display,tag=score_menu,tag=streak_counter] text set value {"text": "$(streak)", "color": "gold"}
$data modify entity @n[type=text_display,tag=score_menu,tag=total] text set value {"text": "$(total)", "color": "gold"}
$data modify entity @n[type=text_display,tag=score_menu,tag=success_rate] text set value {"text": "$(success_rate)%", "color": "$(color)"}
$data modify entity @n[type=text_display,tag=score_menu,tag=streak_record] text set value {"text": "$(record)", "color": "gold"}
