data:extend({
	{	type = "technology",
		name = "sl_synthesizer3",
		icon = "__Solar_Synthesis__/graphics/sl_synthesizer3.png",
		icon_size = 192,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "sl_synthesizer3"
		  }
		},
		prerequisites = {"sl_synthesizer2"},
		unit =
		{
		  count = 800,
		  ingredients =
		  {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1}
		  },
		  time = 30
		},
	},
	{	type = "recipe",
		name = "sl_synthesizer3",
		enabled = false,
		ingredients =
		{
		  	{"sl_synthesizer2", 4},
			{"effectivity-module-3", 10},
			{"productivity-module-3", 10},
			{"steel-chest", 20},
			{"advanced-circuit", 50}
		},
		result = "sl_synthesizer3",
	},
	{ 	type = "item",
		name = "sl_synthesizer3",
		icon = "__Solar_Synthesis__/graphics/sl_synthesizer3.png",
		icon_size = 192,
		subgroup = "energy",
		stack_size = 10,
		place_result = "sl_synthesizer3",
	},
	{	type = "container",
		name = "sl_synthesizer3",
		icon = "__Solar_Synthesis__/graphics/sl_synthesizer3.png",
		icon_size = 34,
		icon_mipmaps = 3,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "sl_synthesizer3"},
		max_health = 450,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
		landing_location_offset = {1.0, -1.0},
		inventory_size = 128,
		picture = {
			layers = {
				{
					filename = "__Solar_Synthesis__/graphics/sl_synthesizer3.png",
					priority = "extra-high",
					width = 192,
					height = 192
				},
				{
					filename = "__Solar_Synthesis__/graphics/sl_synthesizer3.png",
					width = 192,
					height = 192,
					shift = {1, 0},
					draw_as_shadow = true
				},
			}
		},
		
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {144/32, 79/32},
				green = {126/32, 79/32}
			},
			wire =
			{
				red = {67/32, 6/32},
				green = {49/32, 6/32}
			}
		},
	}
})