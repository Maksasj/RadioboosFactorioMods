data:extend({    
    {
      type = "inserter",
      name = "mega-inserter",
      icon = "__exa_inserters__/graphics/icons/mega-inserter-icon.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.1, result = "mega-inserter"},
      max_health = 160,
      corpse = "small-remnants",--"inserter-remnants",
      dying_explosion = "inserter-explosion",
      resistances =
      {
        {
          type = "fire",
          percent = 90
        }
      },
	  stack_size_bonus = 16,
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
      energy_per_movement = "8kJ", --5kJ
      energy_per_rotation = "8kJ",
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        drain = "0.5kW",--"0.4kW"
      },
      rotation_speed = 0.10,
      extension_speed = 0.06,
      fast_replaceable_group = "inserter",    
      working_sound =
      {
        match_progress_to_activity = true,
        sound =
        {
          {
            filename = "__base__/sound/inserter-basic-1.ogg",
            volume = 0.3
          },
          {
            filename = "__base__/sound/inserter-basic-2.ogg",
            volume = 0.3
          },
          {
            filename = "__base__/sound/inserter-basic-3.ogg",
            volume = 0.3
          },
          {
            filename = "__base__/sound/inserter-basic-4.ogg",
            volume = 0.3
          },
          {
            filename = "__base__/sound/inserter-basic-5.ogg",
            volume = 0.3
          }
        },
        --max_sounds_per_type = 5,
        audible_distance_modifier = 0.7,
      },
      hand_base_picture =
      {
        filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-base.png",
        --tint = {r = 69/255, g = 1, b = 249/255},
        priority = "extra-high",
        width = 8,
        height = 33,
        hr_version =
        {
          filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-base.png",
          --tint = {r = 69/255, g = 1, b = 249/255},
          priority = "extra-high",
          width = 8,
          height = 32,
          scale = 0.25
        }
      },
      hand_closed_picture =
      {
        filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-closed.png",
        --tint = {r = 69/255, g = 1, b = 249/255},
        priority = "extra-high",
        width = 18,
        height = 41,
        hr_version =
        {
          filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-closed.png",
          --tint = {r = 69/255, g = 1, b = 249/255},
          priority = "extra-high",
          width = 18,
          height = 41,
          scale = 0.25
        }
      },
      hand_open_picture =
      {
        filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-open.png",
        --tint = {r = 69/255, g = 1, b = 249/255},
        priority = "extra-high",
        width = 18,
        height = 41,
        hr_version =
        {
          filename = "__exa_inserters__/graphics/entity/inserter/inserter-hand-open.png",
          --tint = {r = 69/255, g = 1, b = 249/255},
          priority = "extra-high",
          width = 18,
          height = 41,
          scale = 0.25
        }
      },
      hand_base_shadow =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
        --tint = {r = 69/255, g = 1, b = 249/255},
        priority = "extra-high",
        width = 8,
        height = 33,
        hr_version =
        {
          filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
          priority = "extra-high",
          width = 8,
          height = 33,
          scale = 0.25
        }
      },
      hand_closed_shadow =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 18,
        height = 41,
        hr_version =
        {
          filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          scale = 0.25
        }
      },
      hand_base_shadow =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 8,
        height = 33,
        hr_version =
        {
          filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
          priority = "extra-high",
          width = 8,
          height = 33,
          scale = 0.25
        }
      },
      hand_closed_shadow =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 18,
        height = 41,
        hr_version =
        {
          filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          scale = 0.25
        }
      },
      hand_open_shadow =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 18,
        height = 41,
        hr_version =
        {
          filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          scale = 0.25
        }
      },
      pickup_position = {0, -1},
      insert_position = {0, 1.2},
      platform_picture =
      {
        sheet =
        {
          filename = "__exa_inserters__/graphics/entity/inserter/mega-inserter-platform.png",
          --tint = {r = 69/255, g = 1, b = 249/255},
          priority = "extra-high",
          width = 46,
          height = 46,
          shift = {0.09375, 0},
          hr_version =
          {
            filename = "__exa_inserters__/graphics/entity/inserter/mega-inserter-platform.png",
            --tint = {r = 69/255, g = 1, b = 249/255},
            priority = "extra-high",
            width = 46,
            height = 46,
            shift = util.by_pixel(1.5, 7.5-1),
            scale = 0.5
          }
        }
      },
      circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
      circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
      circuit_wire_max_distance = inserter_circuit_wire_max_distance,
      default_stack_control_input_signal = inserter_default_stack_control_input_signal
    }
})