advancement revoke @s only tg:_event/use_slam_weapon

particle minecraft:trial_spawner_detection ~ ~ ~ 0.3 0.3 0.3 0 50 force
particle minecraft:gust ~ ~ ~ 0.2 0.1 0.2 0 3
particle minecraft:item_cobweb ~ ~ ~ 3 3 3 0 30 force

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.8 0.7
playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 1 0.9
playsound minecraft:block.trial_spawner.detect_player master @a ~ ~ ~ 0.7 1.2

tag @s add slam_run
attribute @s minecraft:fall_damage_multiplier modifier add slam_weapon -1 add_multiplied_total

scoreboard players set @s slam_timer 16 
effect give @s levitation 1 60

execute if items entity @s weapon.mainhand *[custom_data~{tg:{"special_weapon": true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg:{"special_weapon": true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped

execute if entity @s[gamemode=survival] run tag @s add GIVE_BACK
execute if entity @s[gamemode=adventure] run tag @s add GIVE_BACK