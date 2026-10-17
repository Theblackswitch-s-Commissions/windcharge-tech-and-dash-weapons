execute if score #success_rate temp matches ..50 run return run data modify storage tg:temp color set value "red"
execute if score #success_rate temp matches ..60 run return run data modify storage tg:temp color set value "gold"
execute if score #success_rate temp matches ..70 run return run data modify storage tg:temp color set value "yellow"
data modify storage tg:temp color set value "green"
