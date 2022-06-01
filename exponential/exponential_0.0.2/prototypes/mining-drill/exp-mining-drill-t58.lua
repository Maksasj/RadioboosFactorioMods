
--exp-mining-drill-t58.lua
local btint = {r=0.64,g=0.29,b=0.59};

-- Electrified Stone Furnace
exp_tmp_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"]);
exp_tmp_drill.name = "exp-mining-drill-t58";
exp_tmp_drill.minable = {mining_time = 0.3, result = "exp-mining-drill-t58"};
exp_tmp_drill.working_sound = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"].working_sound);
exp_tmp_drill.wet_mining_graphics_set = nil;
exp_tmp_drill.energy_source = {
	type = "electric",
	emissions_per_minute = 2,
	usage_priority = "secondary-input"
};
exp_tmp_drill.mining_speed = 29.5;
exp_tmp_drill.module_specification.module_slots = 8
exp_tmp_drill.energy_usage = " 2700kW";

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
	name = "exp-mining-drill-t58",
	icon = "__exponential__/graphics/icons/mining-drill/exp-mining-drill-t58.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "extraction-machine",
	order = "a[items]-c[advanced-mining-drill]",
	place_result = "exp-mining-drill-t58",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "exp-mining-drill-t58",
	enabled = false,
	energy_required = 2,
	ingredients = {{'exp-mining-drill-t57', 2}},
	result = "exp-mining-drill-t58"
	}
})

data:extend({
	{
	type = "technology",
	name = "exp-mining-drill-t58",
	icon = "__exponential__/graphics/icons/mining-drill/exp-mining-drill-t58.png",
	icon_size = 64, icon_mipmaps = 4,
	prerequisites = {'exp-mining-drill-t57'},
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
			recipe = "exp-mining-drill-t58"
			},
		},
	order = "c-b-a"
	}
})
