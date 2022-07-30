data:extend({
  {
    type = "fluid",
    name = "ai-bio-essence",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=0, g=0.8, b=0.2},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__Aquatic_Industries__/graphics/fluids/ai-bio-essence.png",
    icon_size = 160
  },
  {	
    type = "recipe",
    name = "ai-bio-essence",
    category = "crafting-with-fluid",
    enabled = true,
    energy_required = 25,
    subgroup = "raw-material",
    icon = "__Aquatic_Industries__/graphics/fluids/ai-bio-essence.png",
    base_color = {r=0, g=0.8, b=0.2},
    icon_size = 160,
    ingredients =
    {
      {type="item", name="ai-kelp", amount=25}
    },
    results = 
    {
      {type = "fluid", name = "ai-bio-essence", amount = 25, hide_from_stats=false}
    },
  }
})