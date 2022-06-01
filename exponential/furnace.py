from PIL import Image

class Furnace:
      def __init__(self, tier, _color):
            self.tier = tier
            self.prev_tier = tier - 1
            self.speed = 2+0.5*tier
            self.module_slots = 2 + (tier // 10)

            self.r, self.g, self.b = _color
            self.color = "{r="+str(self.r)+",g="+str(self.g)+",b="+str(self.b)+"}"

            self.first_technologie = "advanced-material-processing-2"
            self.first_ingredient = "electric-furnace"

      def PrevTech(self):
            if (self.tier - 1) == 0:
                  return self.first_technologie
            return "exp-furnace-t"+str(self.prev_tier)

      def PrevIngredien(self):
            if (self.tier - 1) == 0:
                  return self.first_ingredient
            return "exp-furnace-t"+str(self.prev_tier)

      def SaveIcon(self, file_path):
            img = Image.open("src/electric-furnace.png")
            pixels = img.load()

            for i in range(img.size[0]):
                  for j in range(img.size[1]):
                        if pixels[i,j] != (255, 0, 0):
                              Tr, Tg, Tb, Ta = pixels[i,j]
                              img.putpixel((i, j), (int(Tr*self.r), int(Tg*self.g), int(Tb*self.b), Ta))

            img.save(file_path+"exp-furnace-t"+str(self.tier)+'.png', format="png")

      def SaveFile(self, file_path):
            f = open(file_path+"exp-furnace-t"+str(self.tier)+".lua", "w")

            furnace_data = """
--exp-furnace-t"""+str(self.tier)+""".lua

local expFurnaceT"""+str(self.tier)+""" = table.deepcopy(data.raw["furnace"]["electric-furnace"])

expFurnaceT"""+str(self.tier)+""".name = "exp-furnace-t"""+str(self.tier)+""""
expFurnaceT"""+str(self.tier)+""".icons = {
{
      icon = expFurnaceT"""+str(self.tier)+""".icon,
      tint = """+self.color+"""
},
}
expFurnaceT"""+str(self.tier)+""".crafting_speed = """+str(self.speed)+"""
expFurnaceT"""+str(self.tier)+""".module_specification.module_slots = """+str(self.module_slots)+"""
expFurnaceT"""+str(self.tier)+""".energy_usage = '"""+str(560+(40*self.tier))+"""kW'
expFurnaceT"""+str(self.tier)+""".energy_source.emissions_per_minute = 0.5
expFurnaceT"""+str(self.tier)+""".energy_source.drain = "300W"

expFurnaceT"""+str(self.tier)+""".minable.result = "exp-furnace-t"""+str(self.tier)+""""

expFurnaceT"""+str(self.tier)+""".animation =
{
      layers =
      {
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
            tint = """+self.color+""",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
            tint = """+self.color+""",
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
            tint = """+self.color+""",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            draw_as_shadow = true,
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
            tint = """+self.color+""",
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
expFurnaceT"""+str(self.tier)+""".working_visualisations =
      {
      {
      animation =
      {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            tint = """+self.color+""",
            priority = "high",
            width = 25,
            height = 15,
            frame_count = 12,
            animation_speed = 0.5,
            shift = {0.015625, 0.890625},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            tint = """+self.color+""",
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
            tint = """+self.color+""",
            priority = "high",
            width = 19,
            height = 13,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {-0.671875, -0.640625},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            tint = """+self.color+""",
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
            tint = """+self.color+""",
            priority = "high",
            width = 12,
            height = 9,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {0.0625, -1.234375},
            hr_version =
            {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            tint = """+self.color+""",
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
expFurnaceT"""+str(self.tier)+""".water_reflection =
      {
      pictures =
      {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
      tint = """+self.color+""",
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

data:extend{expFurnaceT"""+str(self.tier)+"""}
data:extend(
      {
            {
                        type = "item",
                        name = "exp-furnace-t"""+str(self.tier)+"""",
                        icon = "__exponential__/graphics/icons/furnace/exp-furnace-t"""+str(self.tier)+""".png",
                        tint = """+self.color+""",
                        icon_size = 64, icon_mipmaps = 4,
                        subgroup = "smelting-machine",
                        place_result = "exp-furnace-t"""+str(self.tier)+"""",
                        stack_size = 5,
                        order = "z+"
            },
            {
                        type = "recipe",
                        enabled = false,
                        name = "exp-furnace-t"""+str(self.tier)+"""",
                        energy_required = 120,
                        ingredients = {{'"""+self.PrevIngredien()+"""', 2}},
                        result = "exp-furnace-t"""+str(self.tier)+""""
            },
            {
                        type = "technology",
                        enabled = true,
                        name = "exp-furnace-t"""+str(self.tier)+"""",
                        icon_size = 64,
                        icon = "__exponential__/graphics/icons/furnace/exp-furnace-t"""+str(self.tier)+""".png",
                        tint = """+self.color+""",
                        prerequisites = {'"""+self.PrevTech()+"""'},
                        effects =
                        {
                        {
                        type = "unlock-recipe",
                        recipe = "exp-furnace-t"""+str(self.tier)+""""
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
)"""
            f.write(furnace_data)
            f.close()