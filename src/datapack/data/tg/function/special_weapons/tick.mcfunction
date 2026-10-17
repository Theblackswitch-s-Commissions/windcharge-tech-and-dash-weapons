    

function tg:special_weapons/slam/tick
function tg:special_weapons/poison/tick
function tg:special_weapons/double_dash/tick

# copy the item to the body slot
execute if items entity @s weapon.mainhand *[custom_data~{tg:{"special_weapon": true}}] run item replace entity @s armor.body from entity @s weapon.mainhand tg:clear_when_dropped
execute if items entity @s weapon.offhand *[custom_data~{tg:{"special_weapon": true}}] run item replace entity @s armor.body from entity @s weapon.offhand tg:clear_when_dropped

# give back the item if needed
execute if entity @s[tag=GIVE_BACK]:
    tag @s remove GIVE_BACK

    execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand from entity @s armor.body tg:no_clear_when_dropped
    execute unless items entity @s weapon.offhand * run return run item replace entity @s weapon.offhand from entity @s armor.body tg:no_clear_when_dropped

    tag @s add SELECT
    
    execute summon minecraft:chest_minecart:
        item replace entity @s container.0 from entity @p[tag=SELECT] armor.body
        kill @s

    tag @s remove SELECT