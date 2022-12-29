-- ITEM
local fish = table.deepcopy(data.raw["capsule"]["raw-fish"])
fish.name = "wild_fish"

-- RECIPE
local recipe = {
    type = "recipe",
    name = "wild_fish",
    enabled = false,
    hidden = true,
    subgroup = "raw-material",
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64,
    ingredients =
    {
        {type="item", name = "raw-fish", amount = 2}
    },
    results = 
    {
        {type = "item", name = "wild_fish", amount = 1, probability=0.1, hide_from_stats=false},	
        {type = "item", name = "raw-fish", amount = 1, probability=0.9, hide_from_stats=false}
    },
}

data:extend({ fish, recipe })