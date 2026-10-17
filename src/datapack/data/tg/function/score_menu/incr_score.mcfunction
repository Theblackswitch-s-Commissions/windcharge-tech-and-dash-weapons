scoreboard players add #correct score_menu 1
scoreboard players add #streak score_menu 1
scoreboard players add #total score_menu 1

function tg:score_menu/update

scoreboard players set #10 temp 10
scoreboard players operation #streak_10 temp = #streak score_menu
scoreboard players operation #streak_10 temp %= #10 temp

execute if score #streak_10 temp matches 0:
    playsound minecraft:entity.armadillo.brush master @a ~ ~ ~ 10 1
    playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10 1.2

    execute as @n[type=text_display,tag=main] at @s run particle minecraft:wax_off ^ ^1.4 ^0.5 0 0 0 30 20 force

execute if score #streak_10 temp matches 1..:
    playsound minecraft:entity.armadillo.brush master @a ~ ~ ~ 10 1.5
    playsound minecraft:block.note_block.bell master @a ~ ~ ~ 10 1
    
    execute as @n[type=text_display,tag=main] at @s run particle minecraft:scrape ^ ^1.4 ^0.5 0 0 0 10 5
    
execute as @n[type=text_display,tag=streak_counter]:
    data modify entity @s transformation.scale set value [3.5f, 3.5f, 3.5f]

    data modify entity @s interpolation_duration set value 1
    schedule function tg:score_menu/reset_anim 2t append