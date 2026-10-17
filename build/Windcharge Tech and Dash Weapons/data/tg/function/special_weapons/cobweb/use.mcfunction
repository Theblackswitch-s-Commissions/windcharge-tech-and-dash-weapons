advancement revoke @s only tg:_event/use_cobweb_weapon
particle minecraft:item_cobweb ~ ~ ~ 3 3 3 0 20 force
particle minecraft:white_ash ~ ~ ~ 3 3 3 0 50 force
playsound minecraft:block.cobweb.break master @a ~ ~ ~ 1 0.9
playsound minecraft:entity.horse.armor master @a ~ ~ ~ 0.2 1.4
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:cobweb
execute if items entity @s weapon.mainhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg: {special_weapon: true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped
execute if entity @s[gamemode=survival] run tag @s add GIVE_BACK
execute if entity @s[gamemode=adventure] run tag @s add GIVE_BACK
