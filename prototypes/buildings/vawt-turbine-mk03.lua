RECIPE{
    type = 'recipe',
    name = 'vawt-turbine-mk03',
    energy_required = 0.5,
    enabled = true,
    ingredients = {{'pipe', 20}},
    results = {{'vawt-turbine-mk03', 1}}
}

ITEM{
    type = 'item',
    name = 'vawt-turbine-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk03.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-buildings-mk03',
    order = 'd',
    place_result = 'vawt-turbine-mk03',
    stack_size = 10
}

ENTITY{
    type = 'electric-energy-interface',
    name = 'vawt-turbine-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/icons/vawt-turbine-mk03.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    -- minable = {mining_time = 0.5, result = "vawt-turbine-mk03"},
    fast_replaceable_group = 'vawt-turbine-mk03',
    max_health = 400,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '500MJ',
        output_flow_limit = '50MW'
    },
    energy_production = '50MW',
    energy_usage = '0kW',
    working_sound = {
        sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk02.ogg', volume = 0.75},
        idle_sound = {filename = '__pyalternativeenergygraphics__/sounds/vawt-turbine-mk02.ogg', volume = 0.55},
        apparent_volume = 2.5
    },
    -- This should be the same as any animation on the assembler style buildings so if it doesnt work right just copy the animation section from one of them.
    animation =
        {
            layers =
            {
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/ground.png',
                    width = 256,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(0, 20),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/r1.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(-64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/r2.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/l1.png',
                    width = 256,
                    height = 256,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(0, -156),
                    animation_speed = 0.3,
                    draw_as_glow = true,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/a1.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(-64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/a2.png',
                    width = 128,
                    height = 416,
                    line_length = 15,
                    frame_count = 50,
                    shift = util.by_pixel(64, -76),
                    animation_speed = 0.3,
                },
                {
                    filename = '__pyalternativeenergygraphics__/graphics/entity/vawt-turbine-mk03/sh.png',
                    width = 64,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    shift = util.by_pixel(160, 20),
                    animation_speed = 0.3,
                },
            }
        }
}