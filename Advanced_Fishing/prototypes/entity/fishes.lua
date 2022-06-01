data:extend({
    --Crab
	{
		type = "capsule",
		name = "af-crab",
		icon = "__Advanced_Fishing__/graphics/fishes/crab.png",
		icon_size = 128,
		subgroup = "raw-material",
        stack_size = 100,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = {type = "physical", amount = -160}
							}
						}
					}
				}
			}
		}
	},
    --Salmon
    {
		type = "capsule",
		name = "af-salmon",
		icon = "__Advanced_Fishing__/graphics/fishes/salmon.png",
		icon_size = 128,
		subgroup = "raw-material",
        stack_size = 100,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = {type = "physical", amount = -100}
							}
						}
					}
				}
			}
		}
	},
    --Tropical
    {
		type = "capsule",
		name = "af-tropical",
		icon = "__Advanced_Fishing__/graphics/fishes/tropical.png",
		icon_size = 128,
		subgroup = "raw-material",
        stack_size = 100,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = {type = "physical", amount = -120}
							}
						}
					}
				}
			}
		}
	},
    --Squid
    {
		type = "capsule",
		name = "af-squid",
		icon = "__Advanced_Fishing__/graphics/fishes/squid.png",
		icon_size = 128,
		subgroup = "raw-material",
        stack_size = 100,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
                activation_type = "consume",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = {type = "physical", amount = -200}
							}
						}
					}
				}
			}
		}
	}
})