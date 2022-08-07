function waterSinkAnimations()
    return {
        north =
	    {
            layers =
            {
                {
                    filename = "__WaterSink__/graphics/entity/water_sink_1.png",
                    priority = "high",
                    width = 1000,
                    height = 1000,
                    scale = 0.07,
                }
            }
        },
        east =
	    {
            layers =
            {
                {
                    filename = "__WaterSink__/graphics/entity/water_sink_2.png",
                    priority = "high",
                    width = 1000,
                    height = 1000,
                    scale = 0.07,
                }
            }
        },
        north =
	    {
            layers =
            {
                {
                    filename = "__WaterSink__/graphics/entity/water_sink_3.png",
                    priority = "high",
                    width = 1000,
                    height = 1000,
                    scale = 0.07,
                }
            }
        },
        west =
	    {
            layers =
            {
                {
                    filename = "__WaterSink__/graphics/entity/water_sink_4.png",
                    priority = "high",
                    width = 1000,
                    height = 1000,
                    scale = 0.07,
                }
            }
        }
    }
end

function createWaterSink()
    --Enitity
    local entity = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
    entity.adjacent_tile_collision_test = { "ground-tile", "water-tile", "object-layer" }
    entity.adjacent_tile_collision_mask = nil
    entity.placeable_position_visualization = nil
    entity.flags = {"placeable-neutral", "player-creation"}
    entity.name = "water_sink"
    entity.minable.result = "water_sink"

    entity.collision_box = {{-0.5, -0.5}, {0.5, 0.5}}
    entity.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}

    entity.graphics_set = {}
    entity.graphics_set.animation = waterSinkAnimations();
    
    --Iitem
    local item = table.deepcopy(data.raw.item["offshore-pump"])
    item.name = "water_sink"
    item.place_result = "water_sink"
    item.icons = {{ 
        icon = "__WaterSink__/graphics/water_sink_icon.png",
        icon_size = 1000, 
    }}

    --Recipe
    local recipe = {
        type = "recipe",
        name = "water_sink",
        enabled = true,
        ingredients = {   
            {"offshore-pump", 2},
            {"engine-unit", 10},
            {"iron-gear-wheel", 35},
            {"electronic-circuit", 12},
            {"steel-plate", 5}
        },
        result = "water_sink"
    }

    --Technology
    local technology = {	
        type = "technology",
        name = "water_sink",
        icon = "__WaterSink__/graphics/water_sink_icon.png",
        icon_size = 1000,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "water_sink"
            }
        },
        prerequisites = { "automation-2", "fluid-handling" },
        unit = {
            count = 125,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30
        },
    }

    data:extend({ entity, item, recipe, technology })
end

createWaterSink();