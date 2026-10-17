tag @s remove GIVE_BACK
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand from entity @s armor.body tg:no_clear_when_dropped
execute unless items entity @s weapon.offhand * run return run item replace entity @s weapon.offhand from entity @s armor.body tg:no_clear_when_dropped
tag @s add SELECT
execute summon minecraft:chest_minecart run function tg:special_weapons/tick/nested_execute_0
tag @s remove SELECT
