from PIL import Image

class SolarPanel:
      def __init__(self, tier, _color):
            self.tier = tier
            self.prev_tier = tier - 1
            self.production = 0.5+0.5*tier

            self.r, self.g, self.b = _color
            self.color = "{r="+str(self.r)+",g="+str(self.g)+",b="+str(self.b)+"}"

            self.first_technologie = "solar-energy"
            self.first_ingredient = "solar-panel"

      def PrevTech(self):
            if (self.tier - 1) == 0:
                  return self.first_technologie
            return "exp-solar-panel-t"+str(self.prev_tier)

      def PrevIngredien(self):
            if (self.tier - 1) == 0:
                  return self.first_ingredient
            return "exp-solar-panel-t"+str(self.prev_tier)

      def SaveIcon(self, file_path):
            img = Image.open("src/solar-panel.png")
            pixels = img.load()

            for i in range(img.size[0]):
                  for j in range(img.size[1]):
                        if pixels[i,j] != (255, 0, 0):
                              Tr, Tg, Tb, Ta = pixels[i,j]
                              img.putpixel((i, j), (int(Tr*self.r), int(Tg*self.g), int(Tb*self.b), Ta))

            img.save(file_path+"exp-solar-panel-t"+str(self.tier)+'.png', format="png")

      def SaveFile(self, file_path):
            f = open(file_path+"exp-solar-panel-t"+str(self.tier)+".lua", "w")

            furnace_data = """
--exp-solar-panel-t"""+str(self.tier)+""".lua
local btint = """+self.color+""";

local SolarPanel = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
SolarPanel.name = "exp-solar-panel-t"""+str(self.tier)+""""
SolarPanel.production = '"""+str(self.production)+"""kW'
SolarPanel.icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t"""+str(self.tier)+""".png"
SolarPanel.icon_mipmaps = 4
SolarPanel.corpse = "small-remnants"
SolarPanel.minable = {mining_time = 0.1, result = "exp-solar-panel-t"""+str(self.tier)+""""}
SolarPanel.picture.layers[1].tint = btint;
SolarPanel.picture.layers[1].hr_version.tint = btint;

data:extend({
	SolarPanel
})

data:extend({
	{
	type = "item",
	name = "exp-solar-panel-t"""+str(self.tier)+"""",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t"""+str(self.tier)+""".png",
	icon_size = 64, icon_mipmaps = 4,
	place_result = "exp-solar-panel-t"""+str(self.tier)+"""",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "exp-solar-panel-t"""+str(self.tier)+"""",
	enabled = false,
	energy_required = 2,
	ingredients = {{'"""+self.PrevIngredien()+"""', 2}},
	result = "exp-solar-panel-t"""+str(self.tier)+""""
	}
})

data:extend({
	{
	type = "technology",
	name = "exp-solar-panel-t"""+str(self.tier)+"""",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t"""+str(self.tier)+""".png",
	icon_size = 64, icon_mipmaps = 4,
	prerequisites = {'"""+self.PrevTech()+"""'},
	unit = {
		count = 100,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 15
	},
	effects = {
			{
			type = "unlock-recipe",
			recipe = "exp-solar-panel-t"""+str(self.tier)+""""
			},
		},
	order = "c-b-a"
	}
})
"""
            f.write(furnace_data)
            f.close()