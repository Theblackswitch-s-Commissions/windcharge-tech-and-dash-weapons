# Scheduled in incr_score

execute as @n[type=text_display,tag=streak_counter]:
    data modify entity @s transformation.scale set value [3.0f, 3.0f, 3.0f]
    data modify entity @s interpolation_duration set value 3
    data modify entity @s start_interpolation set value 0