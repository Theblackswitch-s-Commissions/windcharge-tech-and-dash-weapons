$summon minecraft:armor_stand ~ ~-$(dist) ~ { \
    Invisible:1b, \
    small:1b, \
    "equipment":{ \
        "feet":{ \
            "id":"minecraft:poisonous_potato", \
            "components":{ \
                "minecraft:enchantments":{ \
                    "tg:internal/windcharge_stop":1 \
                }, \
                "minecraft:equippable":{ \
                    "slot":"feet" \
                } \
            } \
        } \
    } \
}

$particle electric_spark ~ ~-$(dist) ~