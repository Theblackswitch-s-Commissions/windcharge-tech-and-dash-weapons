execute if entity @s[tag=doing_a_poison_dash,tag=!launching] if predicate tg:on_ground:
    tag @s remove doing_a_poison_dash

tag @s remove launching

execute as @e[type=marker,tag=poison_cloud] at @s:
    scoreboard players operation #search tbs.ID = @s tbs.ID

    effect give @e[distance=..4,type=!player] minecraft:poison 10 0
    effect give @a[distance=..4,predicate=!theblackswitch:__version__/__patch__/player_id/match_search] minecraft:poison 5 0

    scoreboard players add @s poison_timer 1

    execute if score @s poison_timer matches 5 run kill @s


execute if entity @s[tag=doing_a_poison_dash]:
    scoreboard players operation #search tbs.ID = @s tbs.ID

    scoreboard players add @s poison_timer 1

    execute if score @s poison_timer matches 15 run tag @s remove doing_a_poison_dash
    
    summon marker ~ ~ ~ {Tags:[poison_cloud, INIT]}

    execute as @e[type=marker,tag=poison_cloud,tag=INIT]:
        scoreboard players operation #search tbs.ID = @s tbs.ID
        tag @s remove INIT


    particle minecraft:dust{"color":[0.2, 0.5, 0.2],"scale":2} ~ ~ ~ 0.5 0.5 0.5 0 6
    
    execute if score #3 slow_tick = #3 random_delay run playsound minecraft:block.sculk.hit master @a ~ ~ ~ 0.2 0.9
