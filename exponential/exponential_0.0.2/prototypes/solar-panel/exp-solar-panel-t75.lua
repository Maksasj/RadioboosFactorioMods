
--exp-solar-panel-t75.lua
local btint = {r=0.82,g=0.83,b=0.78};

local SolarPanel = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
SolarPanel.name = "exp-solar-panel-t75"
SolarPanel.production = '38.0kW'
SolarPanel.icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t75.png"
SolarPanel.icon_mipmaps = 4
SolarPanel.corpse = "small-remnants"
SolarPanel.minable = {mining_time = 0.1, result = "exp-solar-panel-t75"}
SolarPanel.picture.layers[1].tint = btint;
SolarPanel.picture.layers[1].hr_version.tint = btint;

data:extend({
	SolarPanel
})

data:extend({
	{
	type = "item",
	name = "exp-solar-panel-t75",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t75.png",
	icon_size = 64, icon_mipmaps = 4,
	place_result = "exp-solar-panel-t75",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "exp-solar-panel-t75",
	enabled = false,
	energy_required = 2,
	ingredients = {{'exp-solar-panel-t74', 2}},
	result = "exp-solar-panel-t75"
	}
})

data:extend({
	{
	type = "technology",
	name = "exp-solar-panel-t75",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t75.png",
	icon_size = 64, icon_mipmaps = 4,
	prerequisites = {'exp-solar-panel-t74'},
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
			recipe = "exp-solar-panel-t75"
			},
		},
	order = "c-b-a"
	}
})
