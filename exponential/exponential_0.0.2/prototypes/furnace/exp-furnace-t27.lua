
--exp-furnace-t27.lua

local expFurnaceT27 = table.deepcopy(data.raw["furnace"]["electric-furnace"])

expFurnaceT27.name = "exp-furnace-t27"
expFurnaceT27.icons = {
{
      icon = expFurnaceT27.icon,
      tint = {r=0.5,g=0.84,b=0.98}
},
}
expFurnaceT27.crafting_speed = 15.5
expFurnaceT27.module_specification.module_slots = 4
expFurnaceT27.energy_usage = '1640kW'
expFurnaceT27.energy_source.emissions_per_minute = 0.5
expFurnaceT27.energy_source.drain = "300W"

expFurnaceT27.minable.result = "exp-furnace-t27"

expFurnaceT27.animation =
{
      layers =
      {
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
            }
      },
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            draw_as_shadow = true,
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 227,
            height = 171,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
            }
      }
      }
      }
expFurnaceT27.working_visualisations =
      {
      {
      animation =
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 25,
            height = 15,
            frame_count = 12,
            animation_speed = 0.5,
            shift = {0.015625, 0.890625},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5
            }
      },
      light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
      animation =
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 19,
            height = 13,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {-0.671875, -0.640625},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5
            }
      }
      },
      {
      animation =
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 12,
            height = 9,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {0.0625, -1.234375},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            tint = {r=0.5,g=0.84,b=0.98},
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5
            }
      }
      }
      }
expFurnaceT27.water_reflection =
      {
      pictures =
      {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
      tint = {r=0.5,g=0.84,b=0.98},
      priority = "extra-high",
      width = 24,
      height = 24,
      shift = util.by_pixel(5, 40),
      variation_count = 1,
      scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
      }

data:extend{expFurnaceT27}
data:extend(
      {
            {
                        type = "item",
                        name = "exp-furnace-t27",
                        icon = "__exponential__/graphics/icons/furnace/exp-furnace-t27.png",
                        tint = {r=0.5,g=0.84,b=0.98},
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "exp-furnace-t27",
                        stack_size = 5,
                        order = "z+"
            },
            {
                        type = "recipe",
                        enabled = false,
                        name = "exp-furnace-t27",
                        energy_required = 120,
                        ingredients = {{'exp-furnace-t26', 2}},
                        result = "exp-furnace-t27"
            },
            {
                        type = "technology",
                        enabled = true,
                        name = "exp-furnace-t27",
                        icon_size = 64,
                        icon = "__exponential__/graphics/icons/furnace/exp-furnace-t27.png",
                        tint = {r=0.5,g=0.84,b=0.98},
                        prerequisites = {'exp-furnace-t26'},
                        effects =
                        {
                        {
                        type = "unlock-recipe",
                        recipe = "exp-furnace-t27"
                        }
                        },
                        unit =
                        {
                        count = 1000,
                        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
                        time = 50
                        },
                        order = "a-b-a"
            }
      }
)