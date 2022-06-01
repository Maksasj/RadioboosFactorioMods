from PIL import Image

class MiningDrill:
      def __init__(self, tier, _color):
            self.tier = tier
            self.prev_tier = tier - 1
            self.speed = 0.5+0.5*tier
            self.module_slots = 3 + (tier // 10)

            self.r, self.g, self.b = _color
            self.color = "{r="+str(self.r)+",g="+str(self.g)+",b="+str(self.b)+"}"

            self.first_technologie = "mining-productivity-4"
            self.first_ingredient = "electric-mining-drill"

      def PrevTech(self):
            if (self.tier - 1) == 0:
                  return self.first_technologie
            return "exp-mining-drill-t"+str(self.prev_tier)

      def PrevIngredien(self):
            if (self.tier - 1) == 0:
                  return self.first_ingredient
            return "exp-mining-drill-t"+str(self.prev_tier)

      def SaveIcon(self, file_path):
            img = Image.open("src/electric-mining-drill.png")
            pixels = img.load()

            for i in range(img.size[0]):
                  for j in range(img.size[1]):
                        if pixels[i,j] != (255, 0, 0):
                              Tr, Tg, Tb, Ta = pixels[i,j]
                              img.putpixel((i, j), (int(Tr*self.r), int(Tg*self.g), int(Tb*self.b), Ta))

            img.save(file_path+"exp-mining-drill-t"+str(self.tier)+'.png', format="png")

      def SaveFile(self, file_path):
            f = open(file_path+"exp-mining-drill-t"+str(self.tier)+".lua", "w")

            furnace_data = """
--exp-mining-drill-t"""+str(self.tier)+""".lua
local btint = """+self.color+""";

-- Electrified Stone Furnace
exp_tmp_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"]);
exp_tmp_drill.name = "exp-mining-drill-t"""+str(self.tier)+"""";
exp_tmp_drill.minable = {mining_time = 0.3, result = "exp-mining-drill-t"""+str(self.tier)+""""};
exp_tmp_drill.working_sound = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"].working_sound);
exp_tmp_drill.wet_mining_graphics_set = nil;
exp_tmp_drill.energy_source = {
	type = "electric",
	emissions_per_minute = 2,
	usage_priority = "secondary-input"
};
exp_tmp_drill.mining_speed = """+str(self.speed)+""";
exp_tmp_drill.module_specification.module_slots = """+str(self.module_slots)+"""
exp_tmp_drill.energy_usage = " """+str(90+45*self.tier)+"""kW";

exp_tmp_drill.graphics_set.animation.north.layers[1].tint = btint;
exp_tmp_drill.graphics_set.animation.north.layers[1].hr_version.tint = btint;

exp_tmp_drill.graphics_set.animation.east.layers[1].tint = btint;
exp_tmp_drill.graphics_set.animation.east.layers[1].hr_version.tint = btint;

exp_tmp_drill.graphics_set.animation.south.layers[1].tint = btint;
exp_tmp_drill.graphics_set.animation.south.layers[1].hr_version.tint = btint;

exp_tmp_drill.graphics_set.animation.west.layers[1].tint = btint;
exp_tmp_drill.graphics_set.animation.west.layers[1].hr_version.tint = btint;

data:extend({
	exp_tmp_drill
})

data:extend({
	{
	type = "item",
	name = "exp-mining-drill-t"""+str(self.tier)+"""",
	icon = "__exponential__/graphics/icons/mining-drill/exp-mining-drill-t"""+str(self.tier)+""".png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "extraction-machine",
	order = "a[items]-c[advanced-mining-drill]",
	place_result = "exp-mining-drill-t"""+str(self.tier)+"""",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "exp-mining-drill-t"""+str(self.tier)+"""",
	enabled = false,
	energy_required = 2,
	ingredients = {{'"""+self.PrevIngredien()+"""', 2}},
	result = "exp-mining-drill-t"""+str(self.tier)+""""
	}
})

data:extend({
	{
	type = "technology",
	name = "exp-mining-drill-t"""+str(self.tier)+"""",
	icon = "__exponential__/graphics/icons/mining-drill/exp-mining-drill-t"""+str(self.tier)+""".png",
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
			recipe = "exp-mining-drill-t"""+str(self.tier)+""""
			},
		},
	order = "c-b-a"
	}
})
"""
            f.write(furnace_data)
            f.close()