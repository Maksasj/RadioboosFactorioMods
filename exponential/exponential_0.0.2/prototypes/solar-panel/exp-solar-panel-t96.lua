
--exp-solar-panel-t96.lua
local btint = {r=0.55,g=0.33,b=0.58};

local SolarPanel = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
SolarPanel.name = "exp-solar-panel-t96"
SolarPanel.production = '48.5kW'
SolarPanel.icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t96.png"
SolarPanel.icon_mipmaps = 4
SolarPanel.corpse = "small-remnants"
SolarPanel.minable = {mining_time = 0.1, result = "exp-solar-panel-t96"}
SolarPanel.picture.layers[1].tint = btint;
SolarPanel.picture.layers[1].hr_version.tint = btint;

data:extend({
	SolarPanel
})

data:extend({
	{
	type = "item",
	name = "exp-solar-panel-t96",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t96.png",
	icon_size = 64, icon_mipmaps = 4,
	place_result = "exp-solar-panel-t96",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "exp-solar-panel-t96",
	enabled = false,
	energy_required = 2,
	ingredients = {{'exp-solar-panel-t95', 2}},
	result = "exp-solar-panel-t96"
	}
})

data:extend({
	{
	type = "technology",
	name = "exp-solar-panel-t96",
	icon = "__exponential__/graphics/icons/solar-panel/exp-solar-panel-t96.png",
	icon_size = 64, icon_mipmaps = 4,
	prerequisites = {'exp-solar-panel-t95'},
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
			recipe = "exp-solar-panel-t96"
			},
		},
	order = "c-b-a"
	}
})
