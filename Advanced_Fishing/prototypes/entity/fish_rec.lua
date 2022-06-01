data:extend({
	{	type = "recipe",
		name = "af_fish",
        category = "crafting-with-fluid",
		enabled = false,
		hidden = true,
		energy_required = 50,
		subgroup = "raw-material",
		icon = "__base__/graphics/icons/fish.png",
		icon_size = 64,
		ingredients =
		{
            {type="fluid", name="water", amount=250}
		},
		results = 
		{
			{type = "item", name = "raw-fish", amount = 1, probability=0.6, hide_from_stats=false},	
			{type = "item", name = "af-salmon", amount = 1, probability=0.2, hide_from_stats=false},
			{type = "item", name = "af-tropical", amount = 1, probability=0.1, hide_from_stats=false},
			{type = "item", name = "af-crab", amount = 1, probability=0.07, hide_from_stats=false},
			{type = "item", name = "af-squid", amount = 1, probability=0.03, hide_from_stats=false}
		},
	}
})