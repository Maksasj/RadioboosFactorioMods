require("update")
--Update every 120 ticks
script.on_event(defines.events.on_tick,   
    function(event) 
        if event.tick % 120 == 0 then
            updatet.update_on_tick() 
        end
end)

--Build
script.on_event(defines.events.on_built_entity,
    function(event)

        if event.created_entity.name == "sl_synthesizer1" then
            local sl_syn = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer1" }

            for _, chest in pairs(sl_syn) do
                if game.surfaces[1].find_entity("sl_pl1", chest.position) then
                else
                    game.surfaces[1].create_entity{name ="sl_pl1", position = chest.position, text = text}
                end
            end

        elseif event.created_entity.name == "sl_synthesizer2" then
            local sl_syn = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer2" }

            for _, chest in pairs(sl_syn) do
                if game.surfaces[1].find_entity("sl_pl2", chest.position) then
                else
                    game.surfaces[1].create_entity{name ="sl_pl2", position = chest.position, text = text}
                end
            end

        elseif event.created_entity.name == "sl_synthesizer3" then
            local sl_syn = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer3" }

            for _, chest in pairs(sl_syn) do
                if game.surfaces[1].find_entity("sl_pl3", chest.position) then
                else
                    game.surfaces[1].create_entity{name ="sl_pl3", position = chest.position, text = text}
                end
            end  

        elseif event.created_entity.name == "sl_synthesizer4" then
            local sl_syn = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer4" }

            for _, chest in pairs(sl_syn) do
                if game.surfaces[1].find_entity("sl_pl4", chest.position) then
                else
                    game.surfaces[1].create_entity{name ="sl_pl4", position = chest.position, text = text}
                end
            end
        elseif event.created_entity.name == "sl_synthesizer5" then
            local sl_syn = game.surfaces[1].find_entities_filtered{ name = "sl_synthesizer5" }

            for _, chest in pairs(sl_syn) do
                if game.surfaces[1].find_entity("sl_pl5", chest.position) then
                else
                    game.surfaces[1].create_entity{name ="sl_pl5", position = chest.position, text = text}
                end
            end
        end

    end)


--Mined
 script.on_event(defines.events.on_player_mined_entity, 
    function(event)

        if event.entity.name == "sl_synthesizer1" then
            local kill_entity = game.surfaces[1].find_entity("sl_pl1", event.entity.position)
            kill_entity.destroy()
        elseif event.entity.name == "sl_synthesizer2" then
            local kill_entity = game.surfaces[1].find_entity("sl_pl2", event.entity.position)
            kill_entity.destroy()
        elseif event.entity.name == "sl_synthesizer3" then
            local kill_entity = game.surfaces[1].find_entity("sl_pl3", event.entity.position)
            kill_entity.destroy()
        elseif event.entity.name == "sl_synthesizer4" then
            local kill_entity = game.surfaces[1].find_entity("sl_pl4", event.entity.position)
            kill_entity.destroy()
        
        elseif event.entity.name == "sl_synthesizer5" then
            local kill_entity = game.surfaces[1].find_entity("sl_pl5", event.entity.position)
            kill_entity.destroy()
        
        end
        
    end)
