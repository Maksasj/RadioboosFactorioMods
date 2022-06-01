data:extend({
    
    {
        type = "recipe",
        name = "mega-inserter",
        enabled = false,
        ingredients =
        {   
			{"stack-inserter", 5},
			{"iron-gear-wheel", 25},
            {"electronic-circuit", 50}
        },
        result = "mega-inserter"
    },
	{
        type = "recipe",
        name = "giga-inserter",
        enabled = false,
        ingredients =
        {   
			{"mega-inserter", 5},
			{"engine-unit", 10},
			{"iron-gear-wheel", 35},
            {"electronic-circuit", 25},
			{"steel-plate", 75}
        },
        result = "giga-inserter"
    },
	{
        type = "recipe",
        name = "tera-inserter",
        enabled = false,
        ingredients =
        {   
			{"giga-inserter", 5},
			{"engine-unit", 25},
			{"iron-gear-wheel", 45},
            {"advanced-circuit", 20},
			{"steel-plate", 100}
        },
        result = "tera-inserter"
    },
	{
        type = "recipe",
        name = "peta-inserter",
        enabled = false,
        ingredients =
        {   
			{"tera-inserter", 5},
			{"electric-engine-unit", 45},
			{"iron-gear-wheel", 65},
            {"advanced-circuit", 50},
			{"steel-plate", 125}
        },
        result = "peta-inserter"
    },
	{
        type = "recipe",
        name = "exa-inserter",
        enabled = false,
        ingredients =
        {  
			{"peta-inserter", 5},
			{"electric-engine-unit", 100},
			{"iron-gear-wheel", 75},
            {"processing-unit", 75},
			{"steel-plate", 200}
        },
        result = "exa-inserter"
    },



})