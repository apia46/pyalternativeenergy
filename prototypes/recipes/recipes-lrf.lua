

local temp = 1000

for i = 1, 10 do

    local output_temp = temp + (100 * i)

    RECIPE {
        type = "recipe",
        name = "lrf-salt-heating-" .. i,
        category = "lrf-panel",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 50, minimum_temperature = output_temp - 105, maximum_temperature = output_temp - 95},
        },
        results = {
            {type = "fluid", name = "molten-salt", amount = 50, temperature = output_temp},
        },
    }:add_unlock("thermal-mk01")

    output_temp = temp + (200 * i)

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-mk02-" .. i,
            category = "lrf-panel2",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 50, minimum_temperature = output_temp - 205, maximum_temperature = output_temp - 195},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 50, temperature = output_temp},
            },
        }:add_unlock("thermal-mk02")

        output_temp = temp + (300 * i)

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-mk03-" .. i,
            category = "lrf-panel3",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 50, minimum_temperature = output_temp - 305, maximum_temperature = output_temp - 295},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 50, temperature = output_temp},
            },
        }:add_unlock("thermal-mk03")

        output_temp = temp + (400 * i)

        RECIPE {
            type = "recipe",
            name = "lrf-salt-heating-mk04-" .. i,
            category = "lrf-panel4",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "fluid", name = "molten-salt", amount = 50, minimum_temperature = output_temp - 405, maximum_temperature = output_temp - 395},
            },
            results = {
                {type = "fluid", name = "molten-salt", amount = 50, temperature = output_temp},
            },
        }:add_unlock("thermal-mk04")

    log(i)
    log(temp)

end

    RECIPE {
        type = "recipe",
        name = "lrf-steam-1",
        category = "lrf",
        enabled = false,
        energy_required = 10,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 2000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk01")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-2",
        category = "lrf2",
        enabled = false,
        energy_required = 10,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 3000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk02")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-3",
        category = "lrf3",
        enabled = false,
        energy_required = 10,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 4000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk03")

    RECIPE {
        type = "recipe",
        name = "lrf-steam-4",
        category = "lrf4",
        enabled = false,
        energy_required = 10,
        main_product = "pressured-steam",
        ingredients = {
            {type = "fluid", name = "pressured-water", amount = 100},
        },
        results = {
            {type = "fluid", name = "pressured-steam", amount = 100, temperature = 5000},
            {type = "fluid", name = "molten-salt", amount = 100, temperature = 1000},
        },
    }:add_unlock("thermal-mk04")
