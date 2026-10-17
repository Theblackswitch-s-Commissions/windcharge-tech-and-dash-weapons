scoreboard players operation #search tbs.ID = @s tbs.ID
scoreboard players add @s poison_timer 1
execute if score @s poison_timer matches 15 run tag @s remove doing_a_poison_dash
summon marker ~ ~ ~ {Tags: ["poison_cloud", "INIT"]}
execute as @e[type=marker, tag=poison_cloud, tag=INIT] run function tg:special_weapons/poison/tick/nested_execute_1
particle minecraft:dust{color: [0.2d, 0.5d, 0.2d], scale: 2} ~ ~ ~ 0.5 0.5 0.5 0 6
execute if score #3 slow_tick = #3 random_delay run playsound minecraft:block.sculk.hit master @a ~ ~ ~ 0.2 0.9
