data:extend({
  {
    type = "technology",
    name = "exa-inserters-mega",
    icon = "__exa_inserters__/graphics/icons/mega-inserter-icon.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mega-inserter"
      }
    },
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"stack-inserter"},
    upgrade = true
  },
  {
    type = "technology",
    name = "exa-inserters-giga",
    icon = "__exa_inserters__/graphics/icons/giga-inserter-icon.png",
    icon_size = 64,
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "giga-inserter"
      },
    },
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"exa-inserters-mega"},
    upgrade = true
  },
  {
    type = "technology",
    name = "exa-inserters-tera",
    icon = "__exa_inserters__/graphics/icons/tera-inserter-icon.png",
    icon_size = 64,
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "tera-inserter"
      }
    },
    unit =
    {
      count = 700,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"exa-inserters-giga"},
    upgrade = true
  },
  {
    type = "technology",
    name = "exa-inserters-peta",
    icon = "__exa_inserters__/graphics/icons/peta-inserter-icon.png",
    icon_size = 64,
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "peta-inserter"
      }
    },
    unit =
    {
      count = 800,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"exa-inserters-tera"},
    upgrade = true
  },
  {
    type = "technology",
    name = "exa-inserters-exa",
    icon = "__exa_inserters__/graphics/icons/exa-inserter-icon.png",
    icon_size = 64,
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "exa-inserter"
      }
    },
    unit =
    {
      count = 900,
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"exa-inserters-peta"},
    upgrade = true
  },
  {
    type = "technology",
    name = "exa-inserters-inf",
    icon = "__exa_inserters__/graphics/icons/infinity-inserter-icon.png",
    icon_size = 64,
	max_level = "infinite",
    effects = {
		{
			type = "stack-inserter-capacity-bonus",
			modifier = 5
		}
    },
    unit =
    {	
	  count_formula = "(L-1)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
      },
      time = 20
    },
    prerequisites = {"exa-inserters-exa" , "inserter-capacity-bonus-7" , "space-science-pack"},
    upgrade = true
  }



})


