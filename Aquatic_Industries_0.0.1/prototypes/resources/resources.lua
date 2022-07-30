data:extend({
    --Salt
    { 	
        type = "item",
        name = "ai-salt",
        icon = "__Aquatic_Industries__/graphics/resources/ai-salt.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 50
    },
    --Kelp
    { 	
        type = "item",
        name = "ai-kelp",
        icon = "__Aquatic_Industries__/graphics/resources/ai-kelp.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 300
    },
    -- Dried Kelp
    { 	
        type = "item",
        name = "ai-dried-kelp",
        icon = "__Aquatic_Industries__/graphics/resources/ai-dried-kelp.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 300
    },
    --Biofuel
	{
		type = "item",
		name = "ai-biofuel",
		icon = "__Aquatic_Industries__/graphics/resources/ai-biofuel.png",
		icon_size = 160,
		fuel_value = "60MJ",
		fuel_category = "chemical",
		fuel_emissions_multiplier = 0.9,
		subgroup = "raw-resource",
		order = "a[ai-biofuel]",
		stack_size = 100
	},
    --Deep Seaweed
    { 	
        type = "item",
        name = "ai-deep-seaweed",
        icon = "__Aquatic_Industries__/graphics/resources/deep-seaweed.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 300
    },

    --bio-circut
    { 	
        type = "item",
        name = "ai-bio-circut",
        icon = "__Aquatic_Industries__/graphics/resources/bio-circut.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 300
    },
    --bio-logical-element
    { 	
        type = "item",
        name = "ai-bio-logical-element",
        icon = "__Aquatic_Industries__/graphics/resources/bio-logical-element.png",
        icon_size = 160,
        subgroup = "raw-resource",
        stack_size = 300
    },
})