function pipecoverspictures()
	return {
	  north =
	  {
		filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
		priority = "extra-high",
		width = 64,
		height = 64
	  },
	  east =
	  {
		filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
		priority = "extra-high",
		width = 64,
		height = 64
	  },
	  south =
	  {
		filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
		priority = "extra-high",
		width = 64,
		height = 64
	  },
	  west =
	  {
		filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
		priority = "extra-high",
		width = 64,
		height = 64
	  }
	}
  end
  
function assembler2pipepictures()
	return
	{
		north =
		{
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
		priority = "extra-high",
		width = 35,
		height = 18,
		shift = {0.09375, 0.4375}
		},
		east =
		{
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
		priority = "extra-high",
		width = 20,
		height = 38,
		shift = {-0.71875, 0}
		},
		south =
		{
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
		priority = "extra-high",
		width = 44,
		height = 31,
		shift = {0.0625, -1}
		},
		west =
		{
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
		priority = "extra-high",
		width = 19,
		height = 37,
		shift = {0.78125, 0.03125}
		}
	}
end

data:extend({
	{	type = "technology",
		name = "salt_vaporizer",
		icon = "__Aquatic_Industries__/graphics/entity/salt_vaporizer/salt_vaporizer.png",
		icon_size = 160,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "salt_vaporizer"
		  },
		  {
			type = "unlock-recipe",
			recipe = "ai-salt"
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
		name = "salt_vaporizer",
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
		result = "salt_vaporizer",
	},
	{ 	type = "item",
		name = "salt_vaporizer",
		icon = "__Aquatic_Industries__/graphics/entity/salt_vaporizer/salt_vaporizer.png",
		icon_size = 160,
		subgroup = "production-machine",
		stack_size = 10,
		place_result = "salt_vaporizer",
	},
	{
		type = "assembling-machine",
		name = "salt_vaporizer",
		icon = "__Aquatic_Industries__/graphics/entity/salt_vaporizer/salt_vaporizer.png",
		icon_size = 160,
		flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "salt_vaporizer"},
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
		fluid_boxes =
		{
		  {
			production_type = "input",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -3} }}
		  },
		  off_when_no_fluid_recipe = true
		},
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.4, -2.4}, {2.4, 2.4}},
		landing_location_offset = {1.0, -1.0},
		animation =
		{
			layers =
			{
				{
					filename = "__Aquatic_Industries__/graphics/entity/salt_vaporizer/salt_vaporizer_animation.png",
					priority = "high",
					width = 160,
					height = 160,
					frame_count = 56,
			      	line_length = 28,
					animation_speed = 0.125,
					shift = util.by_pixel(7, 0)
				},
				{
					filename = "__Aquatic_Industries__/graphics/entity/salt_vaporizer/salt_vaporizer_animation.png",
					priority = "high",
					width = 160,
					height = 160,
					frame_count = 56,
			      	line_length = 28,
					animation_speed = 0.125,
					draw_as_shadow = true,
					shift = util.by_pixel(12, 5)
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
		crafting_categories = {"ai-salt-vaporizing"},
		crafting_speed = 2,
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