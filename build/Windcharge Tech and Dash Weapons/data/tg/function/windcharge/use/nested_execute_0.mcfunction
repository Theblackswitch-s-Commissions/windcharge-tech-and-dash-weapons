scoreboard players set #1400 temp 1400
scoreboard players set #1000 temp 1000
scoreboard players operation #dist temp = @s motion_y
scoreboard players operation #dist temp *= #1400 temp
scoreboard players operation #dist temp /= #1000 temp
execute store result storage tg:temp dist float 0.001 run scoreboard players add #dist temp 7112
function tg:windcharge/explode/run with storage tg:temp
kill @n[type=minecraft:wind_charge]
