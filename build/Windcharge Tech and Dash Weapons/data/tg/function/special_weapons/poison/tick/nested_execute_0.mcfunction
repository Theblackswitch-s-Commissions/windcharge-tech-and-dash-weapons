scoreboard players operation #search tbs.ID = @s tbs.ID
effect give @e[distance=..4, type=!player] minecraft:poison 10 0
effect give @a[distance=..4, predicate=!theblackswitch:v2.0/patch-3/player_id/match_search] minecraft:poison 5 0
scoreboard players add @s poison_timer 1
execute if score @s poison_timer matches 5 run kill @s
