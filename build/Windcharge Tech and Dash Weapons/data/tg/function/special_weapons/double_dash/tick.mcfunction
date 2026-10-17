execute if items entity @s weapon.mainhand *[custom_data~{tg: {weapon: "double_dash2"}}] if predicate tg:on_ground run item modify entity @s weapon.mainhand tg:enable_cooldown
execute if items entity @s weapon.offhand *[custom_data~{tg: {weapon: "double_dash2"}}] if predicate tg:on_ground run item modify entity @s weapon.offhand tg:enable_cooldown
