tellraw @a [{text: "[Server]: "}, {text: "Windcharge tech & Dash weapons reloaded!", color: "green"}]
scoreboard objectives add use_windcharge minecraft.used:minecraft.wind_charge
scoreboard objectives add motion_y dummy
scoreboard objectives add prev_pos_y dummy
scoreboard objectives add onground_timer dummy
scoreboard objectives add score_menu dummy
scoreboard objectives add slam_timer dummy
scoreboard objectives add poison_timer dummy
function #theblackswitch:v2.0/easing/enable
function #theblackswitch:v2.0/clear_item/enable
function #theblackswitch:v2.0/slow_tick/enable
