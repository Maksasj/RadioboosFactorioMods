data:extend({
	{	type = "technology",
		name = "compressor",
		icon = "__Aquatic_Industries__/graphics/entity/compressor/compressor.png",
		icon_size = 96,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "compressor"
		  }
		},
		prerequisites = {"automation-2","landfill","fluid-handling"},
		unit =
		{
		  count = 250,
		  ingredients =
		  {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		  },
		  time = 30
		},
	},
	{	type = "recipe",
		name = "compressor",
		enabled = false,
		category = "crafting-with-fluid",
		ingredients =
		{
			{type="item", name="productivity-module", amount=10},
			{type="item", name="steel-plate", amount=25},
			{type="item", name="electronic-circuit", amount=50},
			{type="item", name="stone-brick", amount=75},
			{type="item", name="storage-tank", amount=5},
			{type="fluid", name="water", amount=250}
		},
		result = "compressor",
	},
	{ 	type = "item",
		name = "compressor",
		icon = "__Aquatic_Industries__/graphics/entity/compressor/compressor.png",
		icon_size = 96,
		subgroup = "production-machine",
		stack_size = 10,
		place_result = "compressor",
	},
	{
		type = "assembling-machine",
		name = "compressor",
		icon = "__Aquatic_Industries__/graphics/entity/compressor/compressor.png",
		icon_size = 96,
		flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "compressor"},
		max_health = 900,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
		  {
			type = "fire",
			percent = 70
		  }
		},
		collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		landing_location_offset = {1.0, -1.0},
		animation =
		{
			layers =
			{
				{
					filename = "__Aquatic_Industries__/graphics/entity/compressor/compressor.png",
					priority = "high",
					width = 96,
					height = 96,
					frame_count = 1,
			      	line_length = 1,
					animation_speed = 0.01,
					shift = util.by_pixel(0, 0)
				},
				{
					filename = "__Aquatic_Industries__/graphics/entity/compressor/compressor.png",
					priority = "high",
					width = 96,
					height = 96,
					frame_count = 1,
			      	line_length = 1,
					draw_as_shadow = true,
					shift = util.by_pixel(10, 0)
				}
			}
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		working_sound =
		{
		  sound = {
			{
			  filename = "__Aquatic_Industries__/sound/fish-farm-sound1.ogg",
			  volume = 0.8
			},
			{
			  filename = "__Aquatic_Industries__/sound/fish-farm-sound2.ogg",
			  volume = 0.8
			},
			{
				filename = "__Aquatic_Industries__/sound/fish-farm-sound3.ogg",
				volume = 0.8
			},
			{
				filename = "__Aquatic_Industries__/sound/fish-farm-sound4.ogg",
				volume = 0.8
			},
		  },
		  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
		  apparent_volume = 1.5,
		},
		crafting_categories = {"ai-compressing"},
		crafting_speed = 4,
		energy_source =
		{
		  type = "electric",
		  usage_priority = "secondary-input",
		  emissions_per_minute = 1.5
		},
		energy_usage = "300kW",
		module_specification =
		{
		  module_slots = 5,
		  module_info_icon_shift = {0, 0.5},
		  module_info_multi_row_initial_height_modifier = -0.3
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	  }
})