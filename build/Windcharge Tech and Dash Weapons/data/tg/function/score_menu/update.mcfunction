scoreboard players set #100 temp 100
scoreboard players operation #success_rate temp = #correct score_menu
scoreboard players operation #success_rate temp *= #100 temp
scoreboard players operation #success_rate temp /= #total score_menu
data modify storage tg:temp color set value "white"
function tg:score_menu/update/nested_execute_0
execute unless score #streak score_menu <= #record score_menu run scoreboard players operation #record score_menu = #streak score_menu
execute store result storage tg:temp streak int 1 run scoreboard players get #streak score_menu
execute store result storage tg:temp record int 1 run scoreboard players get #record score_menu
execute store result storage tg:temp success_rate int 1 run scoreboard players get #success_rate temp
execute store result storage tg:temp total int 1 run scoreboard players get #total score_menu
function tg:score_menu/update/nested_macro_0 with storage tg:temp
