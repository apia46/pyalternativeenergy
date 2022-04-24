
RECIPE {
    type = "recipe",
    name = "molten-thorium",
    category = "mixer",
    icon = '__pycoalprocessinggraphics__/graphics/missing_icon_64.png',
    icon_size = 64,
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "molten-fluoride", amount = 100},
        {type = "item", name = "th-oxide", amount = 10}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 100}
    },
    subgroup = "py-items",
    order = "g"
}

RECIPE {
    type = "recipe",
    name = "nuclear-molten-thorium-reactor",
    category = "nuclear-fission",
    icon = '__pycoalprocessinggraphics__/graphics/missing_icon_64.png',
    icon_size = 64,
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 1000},
        {type = "fluid", name = "molten-salt", amount = 1000}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium-pa233", amount = 100},
        {type = "fluid", name = "reactor-waste-1", amount = 100}
    },
    subgroup = "py-items",
    order = "g"
}

RECIPE {
    type = "recipe",
    name = "pa-233-seperation",
    category = "centrifuging",
    icon = '__pycoalprocessinggraphics__/graphics/missing_icon_64.png',
    icon_size = 64,
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "molten-fluoride-thorium-pa233", amount = 100},
        {type = "fluid", name = "molten-aluminium", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-fluoride-thorium", amount = 50},
        {type = "item", name = "pa-233", amount = 10}
    },
    subgroup = "py-items",
    order = "g"
}

RECIPE {
    type = "recipe",
    name = "pa233-u233",
    category = "neutron-absorber",
    icon = '__pycoalprocessinggraphics__/graphics/missing_icon_64.png',
    icon_size = 64,
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "pa-233", amount = 10},
    },
    results = {
        {type = "item", name = "u-233", amount = 10}
    },
    subgroup = "py-items",
    order = "g"
}
