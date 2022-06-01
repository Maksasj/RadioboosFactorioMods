local btint = {r=0.45, g=0.85, b=1, a=1};

-- Electrified Stone Furnace
ecodrill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"]);
ecodrill.name = "electric-small-drill";
ecodrill.minable = {mining_time = 0.3, result = "electric-small-drill"};
ecodrill.working_sound = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"].working_sound);
ecodrill.wet_mining_graphics_set = nil;
ecodrill.energy_source = {
	type = "electric",
	emissions_per_minute = 2,
	usage_priority = "secondary-input"
};
ecodrill.mining_speed = 1.0;
ecodrill.energy_usage = "36kW";

ecodrill.graphics_set.animation.north.layers[1].tint = btint;
ecodrill.graphics_set.animation.north.layers[1].hr_version.tint = btint;

ecodrill.graphics_set.animation.east.layers[1].tint = btint;
ecodrill.graphics_set.animation.east.layers[1].hr_version.tint = btint;

ecodrill.graphics_set.animation.south.layers[1].tint = btint;
ecodrill.graphics_set.animation.south.layers[1].hr_version.tint = btint;

ecodrill.graphics_set.animation.west.layers[1].tint = btint;
ecodrill.graphics_set.animation.west.layers[1].hr_version.tint = btint;

data:extend({
	ecodrill
})

data:extend({
	{
	type = "item",
	name = "electric-small-drill",
	icon = "__base__/graphics/icons/electric-mining-drill.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "extraction-machine",
	order = "a[items]-c[advanced-mining-drill]",
	place_result = "electric-small-drill",
	stack_size = 50
	}
})

data:extend({
	{
	type = "recipe",
	name = "electric-small-drill",
	enabled = false,
	energy_required = 2,
	ingredients = {
		{"electric-mining-drill", 2},
		{"electronic-circuit", 10},
		{"steel-plate", 10}
	},
	result = "electric-small-drill"
	}
})

data:extend({
	{
	type = "technology",
	name = "electric-small-drill",
	icon = "__base__/graphics/icons/electric-mining-drill.png",
	icon_size = 64, icon_mipmaps = 4,
	prerequisites = {"steel-processing", "logistic-science-pack"},
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
			recipe = "electric-small-drill"
			},
		},
	order = "c-b-a"
	}
})