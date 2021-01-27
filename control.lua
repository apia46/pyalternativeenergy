
script.on_init(function()
    global.windmills = {}
    end)

    script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
        local E = event.created_entity
        if E.type == 'electric-energy-interface' and string.match(E.name, 'hawt%-turbine') ~= nil then
            local HE = game.surfaces['nauvis'].create_entity{
                name = E.name .. '-hidden',
                position = E.position,
                force = E.force
            }
            local ani = rendering.draw_animation{
                animation = E.name .. '-north',
                surface = 'nauvis',
                target = HE,
                render_layer = 129
            }
            local name = E.name
            E.destroy()
            global.windmills[HE.unit_number] =
                {
                    windmill = HE,
                    animation = ani,
                    max_power = 50,
                    base_name = name
                }
            --log(serpent.block(global.windmills))
        end
    end)

script.on_nth_tick(60, function(event)
    local wind_dir = game.surfaces['nauvis'].wind_orientation
    --local wind_speed = game.surfaces['nauvis'].wind_speed
    --log(wind_speed)
    if wind_dir > 0.9375 and wind_dir <= 0.0625 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-north',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.0625 and wind_dir <= 0.1875 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-northeast',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.1875 and wind_dir <= 0.3125 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-east',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.3125 and wind_dir <= 0.4375 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-southeast',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.4375 and wind_dir <= 0.5625 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-south',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.5625 and wind_dir <= 0.6875 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-southwest',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.6875 and wind_dir <= 0.8125 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-west',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    elseif wind_dir > 0.8125 and wind_dir <= 0.9375 then
        for m, mill in pairs(global.windmills) do
                rendering.destroy(mill.animation)
                local ani = rendering.draw_animation{
                    animation = mill.base_name .. '-northwest',
                    surface = 'nauvis',
                    target = mill.windmill,
                    render_layer = 129
                }
                mill.animation = ani
        end
    end
    for m, mill in pairs(global.windmills) do
        --log(serpent.block(mill.power_production))
        --mill.windmill.power_production = mill.max_power * wind_speed
    end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
    local E = event.entity
    log('hit')
    if E.type == 'electric-energy-interface' and string.match(E.name, 'hawt%-turbine') ~= nil then
        log('hit')
        local mill = global.windmills[E.unit_number]
        rendering.destroy(mill.animation)
        global.windmills[E.unit_number] = nil
    end
    log(serpent.block(global.windmills))
end)