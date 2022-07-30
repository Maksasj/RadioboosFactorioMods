data:extend({
	--Salt
	{	type = "recipe",
		name = "ai-salt",
        category = "ai-salt-vaporizing",
		enabled = false,
		energy_required = 50,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/ai-salt.png",
		icon_size = 160,
		ingredients =
		{
            {type="fluid", name="water", amount=250}
		},
		results = 
		{
			{type = "item", name = "ai-salt", amount = 1, probability=0.6, hide_from_stats=false}
		},
	},
	--Kelp
	{	type = "recipe",
		name = "ai-kelp",
        category = "ai-kelp-farm",
		enabled = false,
		energy_required = 25,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/ai-kelp.png",
		icon_size = 160,
		ingredients =
		{
            {type="fluid", name="water", amount=100}
		},
		results = 
		{
			{type = "item", name = "ai-kelp", amount = 1, hide_from_stats=false}
		},
	},
	--Dried Kelp
	{	type = "recipe",
		name = "ai-dried-kelp",
		enabled = false,
		category = "smelting",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/ai-dried-kelp.png",
		icon_size = 160,
		ingredients =
		{
            {type = "item", name = "ai-kelp", amount = 2}
		},
		results = 
		{
			{type = "item", name = "ai-dried-kelp", amount = 1, hide_from_stats=false}
		},
	},
	--Bio Fuel
	{	type = "recipe",
		name = "ai-biofuel",
		enabled = false,
		category = "ai-compressing",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/ai-biofuel.png",
		icon_size = 160,
		ingredients =
		{
            {type = "item", name = "ai-dried-kelp", amount = 50}
		},
		results = 
		{
			{type = "item", name = "ai-biofuel", amount = 1, hide_from_stats=false}
		},
	},

	--Bio synthesis \/

	--Kelp
	{	
		type = "recipe",
		name = "ai-kelp-synthesis",
		enabled = false,
		category = "ai-bio-synthesis",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/ai-kelp.png",
		icon_size = 160,
		ingredients =
		{
			{type="fluid", name= "ai-bio-essence", amount= 50, hide_from_stats=false}
		},
		results = 
		{
			{type = "item", name = "ai-kelp", amount = 10, hide_from_stats=false}
		},
	},
	--Wood
	{	
		type = "recipe",
		name = "ai-wood-synthesis",
		enabled = false,
		category = "ai-bio-synthesis",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__base__/graphics/icons/wood.png",
		icon_size = 64,
		ingredients =
		{
			{type="fluid", name= "ai-bio-essence", amount= 25, hide_from_stats=false}
		},
		results = 
		{
			{type = "item", name = "wood", amount = 1, hide_from_stats=false}
		},
	},
	-- Deep seaweed
	{	
		type = "recipe",
		name = "ai-deep-seaweed-synthesis",
		enabled = false,
		category = "ai-bio-synthesis",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/deep-seaweed.png",
		icon_size = 160,
		ingredients =
		{
			{type="fluid", name= "ai-bio-essence", amount= 400, hide_from_stats=false}
		},
		results = 
		{
			{type = "item", name = "ai-deep-seaweed", amount = 10, hide_from_stats=false}
		},
	},
	--Bio logical element
	{	
		type = "recipe",
		name = "ai-bio-logical-element",
		enabled = false,
		category = "ai-bio-synthesis",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/bio-logical-element.png",
		icon_size = 160,
		ingredients =
		{
			{type="fluid", name= "ai-bio-essence", amount= 80, hide_from_stats=false}
		},
		results = 
		{
			{type = "item", name = "ai-bio-logical-element", amount = 2, hide_from_stats=false}
		},
	},
	--Bio circut
	{	
		type = "recipe",
		name = "ai-bio-circut",
		enabled = false,
		category = "ai-bio-synthesis",
    	energy_required = 3.5,
		subgroup = "raw-material",
		icon = "__Aquatic_Industries__/graphics/resources/bio-circut.png",
		icon_size = 160,
		ingredients =
		{
			{type="fluid", name= "ai-bio-essence", amount= 80, hide_from_stats=false},
			{type="item", name= "ai-bio-logical-element", amount= 4, hide_from_stats=false}
		},
		results = 
		{
			{type = "item", name = "ai-bio-circut", amount = 1, hide_from_stats=false}
		},
	}
})