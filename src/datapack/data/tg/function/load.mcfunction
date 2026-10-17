tellraw @a [{"text": "[Server]: "}, {"text": "Windcharge tech & Dash weapons reloaded!", "color": "green"}]

# -------------------------------
#  Scoreboards                            
# -------------------------------

# Windcharge stop

scoreboard objectives add use_windcharge minecraft.used:minecraft.wind_charge
scoreboard objectives add motion_y dummy
scoreboard objectives add prev_pos_y dummy

# Scoreboard menu

scoreboard objectives add onground_timer dummy
scoreboard objectives add score_menu dummy

# Special Weapons

scoreboard objectives add slam_timer dummy
scoreboard objectives add poison_timer dummy

# -------------------------------
#  Enable library stuff                            
# -------------------------------

function #theblackswitch:__version__/easing/enable
function #theblackswitch:__version__/clear_item/enable
function #theblackswitch:__version__/slow_tick/enable