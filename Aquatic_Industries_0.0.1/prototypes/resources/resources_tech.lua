data:extend({
	{	type = "technology",
		name = "ai-dried-kelp",
		icon = "__Aquatic_Industries__/graphics/resources/ai-dried-kelp.png",
		icon_size = 160,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "ai-dried-kelp"
		  }
		},
		prerequisites = {"kelp_farm"},
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
    {	type = "technology",
		name = "ai-biofuel",
		icon = "__Aquatic_Industries__/graphics/resources/ai-biofuel.png",
		icon_size = 160,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "ai-biofuel"
		  }
		},
		prerequisites = {"kelp_farm"},
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
	{	type = "technology",
		name = "ai-deep-seaweed",
		icon = "__Aquatic_Industries__/graphics/resources/deep-seaweed.png",
		icon_size = 160,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "ai-deep-seaweed-synthesis"
		  }
		},
		prerequisites = {"bioreactor"},
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

	{	type = "technology",
		name = "bio-electronics",
		icon = "__Aquatic_Industries__/graphics/resources/bio-circut.png",
		icon_size = 160,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "ai-bio-circut"
		  },
		  {
			type = "unlock-recipe",
			recipe = "ai-bio-logical-element"
		  }
		},
		prerequisites = {"bioreactor"},
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
	}
})