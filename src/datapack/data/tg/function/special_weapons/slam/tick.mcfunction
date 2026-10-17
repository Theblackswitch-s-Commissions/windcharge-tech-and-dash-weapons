
execute if score @s slam_timer matches 1:
    playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.25 2

    effect clear @s levitation
    function tg:special_weapons/slam/launch_run

execute if score @s slam_timer matches 1.. run scoreboard players remove @s slam_timer 1

execute unless score @s slam_timer matches 1.. if entity @s[tag=slam_run] if predicate tg:on_ground:
    attribute @s minecraft:fall_damage_multiplier modifier remove slam_weapon
    tag @s remove slam_run