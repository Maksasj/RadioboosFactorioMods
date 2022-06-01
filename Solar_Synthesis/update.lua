updatet = {}

function updatet.update_on_tick()
    local sl_syn1 = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer1" }
    local sl_syn2 = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer2" }
    local sl_syn3= game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer3" }
    local sl_syn4 = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer4" }
    local sl_syn5 = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer5" }

    for _, chest in pairs(sl_syn1) do
        if game.surfaces[1].find_entity("sl_pl1", chest.position) then
            local panel = game.surfaces[1].find_entity("sl_pl1", chest.position)
            local item_count = chest.get_item_count("solar-panel")
            panel.electric_buffer_size = 1000*item_count
            panel.power_production = 1000*item_count*game.surfaces[1].solar_power_multiplier*(1.0-game.surfaces[1].darkness)
        end
    end
    
    for _, chest in pairs(sl_syn2) do
        if game.surfaces[1].find_entity("sl_pl2", chest.position) then
            local panel = game.surfaces[1].find_entity("sl_pl2", chest.position)
            local item_count = chest.get_item_count("solar-panel")
            panel.electric_buffer_size = 1000*item_count
            panel.power_production = 1000*item_count*game.surfaces[1].solar_power_multiplier*(1.0-game.surfaces[1].darkness)
        end
    end

    for _, chest in pairs(sl_syn3) do
        if game.surfaces[1].find_entity("sl_pl3", chest.position) then
            local panel = game.surfaces[1].find_entity("sl_pl3", chest.position)
            local item_count = chest.get_item_count("solar-panel")
            panel.electric_buffer_size = 1000*item_count
            panel.power_production = 1000*item_count*game.surfaces[1].solar_power_multiplier*(1.0-game.surfaces[1].darkness)
        end
    end

    for _, chest in pairs(sl_syn4) do
        if game.surfaces[1].find_entity("sl_pl4", chest.position) then
            local panel = game.surfaces[1].find_entity("sl_pl4", chest.position)
            local item_count = chest.get_item_count("solar-panel")
            panel.electric_buffer_size = 1000*item_count
            panel.power_production = 1000*item_count*game.surfaces[1].solar_power_multiplier*(1.0-game.surfaces[1].darkness)
        end
    end

    for _, chest in pairs(sl_syn5) do
        if game.surfaces[1].find_entity("sl_pl5", chest.position) then
            local panel = game.surfaces[1].find_entity("sl_pl5", chest.position)
            local item_count = chest.get_item_count("solar-panel")
            panel.electric_buffer_size = 1000*item_count
            panel.power_production = 1000*item_count*game.surfaces[1].solar_power_multiplier*(1.0-game.surfaces[1].darkness)
        end
    end

end
