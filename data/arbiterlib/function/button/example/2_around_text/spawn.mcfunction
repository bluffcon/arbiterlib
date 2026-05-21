setblock ~ ~ ~ candle[candles=4,lit=true]

function arbiterlib:button/messages/explanation

## summon the main entity
# passenger is optional, but allows for scaled multi-line text. don't give the other lines "arbiterlib.button.type.2at"
execute align xyz run summon text_display ~0.5 ~0.75 ~0.5 {text:"???", \
    Tags:["arbiterlib.button","arbiterlib.button.type.2at"], brightness:{block:15,sky:15}, \
    billboard:"center",\
    Passengers: \
        [{ \
            id:"text_display", Tags:["arbiterlib.button"], \
            transformation: {left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.6,0.6,0.6],translation:[0,0.3,0]}, \
            text:"I will...", billboard:"center", brightness:{block:15,sky:15} \
        }], \
    }


## item displays (2 max and 2 only)
# both are identical except for what the interaction runs and what tags they have (2at.1 vs 2at.2)
# recommended to keep the sizes. really. you'd probably regret changing them!

# tap function is what runs when you attack the item display to confirm your choice.
# select function is what runs when you interact with it to select a choice

# you absolutely dont have to and probably shouldn't set both of these to the same function like in here,
# but this isn't a really complicated example, so its simplified

summon item_display ~ ~ ~ { \
    Tags: ["arbiterlib.button","arbiterlib.button.type.2at.1","arbiterlib.button.rotate"], \
    item:{id:slime_spawn_egg}, \
    Passengers:[ \
        {id:"interaction", data: \
            {arbiterlib: \
                {entity:"button", \
                    tap_function: "arbiterlib:button/example/2_around_text/select", \
                    select_function:"arbiterlib:button/example/2_around_text/select/1" \
                } \
            }, \
        width:0.5,height:0.5, response: 1b, \
        Tags:["arbiterlib.button"]} \
    ], \
    transformation: \
        {left_rotation:[0,0.707,0,0.707],right_rotation:[0,0,0,1], \
        scale:[0.5,0.5,0.5],translation:[0,0.25,0]}, \
    brightness:{block:0,sky:0} \
}

summon item_display ~ ~ ~ { \
    Tags: ["arbiterlib.button","arbiterlib.button.type.2at.2","arbiterlib.button.rotate"], \
    item:{id:music_disc_creator}, \
    Passengers:[ \
        {id:"interaction", data: \
            {arbiterlib: \
                {entity:"button", \
                    tap_function: "arbiterlib:button/example/2_around_text/select", \
                    select_function:"arbiterlib:button/example/2_around_text/select/2" \
                } \
            }, \
        width:0.5,height:0.5, response: 1b, \
        Tags:["arbiterlib.button"]} \
    ], \
    transformation: \
        {left_rotation:[0,0.707,0,0.707],right_rotation:[0,0,0,1], \
        scale:[0.5,0.5,0.5],translation:[0,0.25,0]}, \
    brightness:{block:0,sky:0} \
}

