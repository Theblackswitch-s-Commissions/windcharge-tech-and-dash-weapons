$loot give @s loot { \
    "pools":[ \
        { \
            "rolls":1, \
            "entries": [ \
                { \
                    "type": "minecraft:item",  \
                    "name": "$(id)", \
                    "functions": [ \
                        { \
                            "function": "set_components", \
                            "components": { \
                                "minecraft:consumable": {"consume_seconds":0.01,"animation":"none","has_consume_particles":False,"sound":"minecraft:intentionally_empty"}, \
                                "minecraft:use_cooldown": {"seconds":5, "cooldown_group": "double_dash"}, \
                                "minecraft:use_effects": {"can_sprint":True,"speed_multiplier":1}, \
                                "minecraft:custom_data": {"tg":{"special_weapon":True, "weapon": "double_dash1"}}, \
                                "minecraft:custom_name": {"text": "RClick to double-dash","color":"green"}, \
                                "minecraft:equippable": {"slot": "body","equip_sound":"minecraft:intentionally_empty"} \
                            } \
                        }, \
                        { \
                            "function": "set_components", \
                            "components": $(components) \
                        } \
                    ] \
                } \
            ] \
        } \
    ] \
}