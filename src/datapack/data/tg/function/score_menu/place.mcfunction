kill @e[tag=score_menu]

summon text_display ~ ~ ~ {
    Passengers:[
        {
            id:"minecraft:text_display",
            text:{"text":"Streak","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:0,
            alignment:"center",
            line_width:210,
            default_background:False,
            transformation:[0.7500f,0.0000f,0.0000f,0.0000f,0.0000f,0.7500f,0.0000f,2.0000f,0.0000f,0.0000f,0.7500f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"99","color":"gold","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:2130706432,
            alignment:"center",
            line_width:46.2,
            default_background:False,
            transformation:[3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,3.0000f,0.0000f,1.1875f,0.0000f,0.0000f,3.0000f,0.4375f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu", "streak_counter"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"Record","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:0,
            alignment:"center",
            line_width:210,
            default_background:False,
            transformation:[0.7500f,0.0000f,0.0000f,0.0000f,0.0000f,0.7500f,0.0000f,3.0000f,0.0000f,0.0000f,0.7500f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"99","color":"yellow","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:2130706432,
            alignment:"center",
            line_width:46.2,
            default_background:False,
            transformation:[2.0000f,0.0000f,0.0000f,0.0000f,0.0000f,2.0000f,0.0000f,2.3875f,0.0000f,0.0000f,2.0000f,0.4375f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu", "streak_record"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"Success Rate","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:0,
            alignment:"center",
            line_width:210,
            default_background:False,
            transformation:[0.6000f,0.0000f,0.0000f,-1.3000f,0.0000f,0.6000f,0.0000f,1.7500f,0.0000f,0.0000f,0.6000f,0.5625f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"20%","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:-2130706432,
            alignment:"right",
            line_width:210,
            default_background:False,
            transformation:[2.0000f,0.0000f,0.0000f,-1.3000f,0.0000f,2.0000f,0.0000f,1.1875f,0.0000f,0.0000f,2.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu", "success_rate"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"999","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:-2130706432,
            alignment:"left",
            line_width:210,
            default_background:False,
            transformation:[2.0000f,0.0000f,0.0000f,1.3000f,0.0000f,2.0000f,0.0000f,1.1875f,0.0000f,0.0000f,2.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu", "total"],
            shadow: True
        },
        {
            id:"minecraft:text_display",
            text:{"text":"Total Hits","color":"#FFFFFF","bold":"false","italic":"false","underlined":"false","strikethrough":"false"},
            text_opacity:255,
            background:0,
            alignment:"center",
            line_width:210,
            default_background:False,
            transformation:[0.6000f,0.0000f,0.0000f,1.3000f,0.0000f,0.6000f,0.0000f,1.7500f,0.0000f,0.0000f,0.6000f,0.5625f,0.0000f,0.0000f,0.0000f,1.0000f],
            Tags:["score_menu"],
            shadow: True
        }
    ],
    Tags:["score_menu", "main"]
}