--local stats_gui = require("gui")
--local player_data = require("player-data")
--
--local event = require("__flib__.event")
--local migration = require("__flib__.migration")
--
--event.on_init(function()
--    global.players = {}
--    global.research_progress_samples = {}
--    global.research_progress_strings = {}
--    for i, player in pairs(game.players) do
--      player_data.init(i)
--      player_data.refresh(player, global.players[i])
--    end
--  end)
--  
--  event.on_configuration_changed(function(e)
--    if migration.on_config_changed(e, migrations) then
--      global.research_progress_samples = {}
--      for i, player in pairs(game.players) do
--        player_data.refresh(player, global.players[i])
--      end
--    end
--  end)
--  
--
--event.on_player_created(function(e)
--local player = game.get_player(e.player_index)
--player_data.init(e.player_index)
--player_data.refresh(player, global.players[e.player_index])
--end)
--
--event.on_player_removed(function(e)
--global.players[e.player_index] = nil
--end)
--
--event.register({
--defines.events.on_player_display_resolution_changed,
--defines.events.on_player_display_scale_changed,
--}, function(e)
--local player = game.get_player(e.player_index)
--local player_table = global.players[e.player_index]
--stats_gui.set_width(player, player_table)
--end)

script.on_event(defines.events.on_gui_opened, function(event)
    if event.gui_type ~= defines.gui_type.entity or event.entity.name ~= 'fishery_fish_breeder' then return end
               
    local player = game.get_player(event.player_index)
    local entity = event.entity
    local screen_element = player.gui.screen
    
    local main_frame = screen_element.add{type = 'frame', name = 'fluid_memory_unit_gui', caption = {'entity-name.fluid-memory-unit'}}
    main_frame.style.size = {500, 414}
    main_frame.auto_center = true
    player.opened = main_frame
    
    local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style='ugg_content_frame'}
    local controls_flow = content_frame.add{type='flow', name='controls_flow', direction='horizontal', style='ugg_controls_flow'}
    
    local choose_slot = content_frame.add{type = 'choose-elem-button', name = 'choose_slot', elem_type='item'}

    local d = content_frame.add{type= 'sprite-button', name = 'dasndja'}

    local entity_preview = content_frame.add{type='entity-preview', name='entity_preview', style='ugg_deep_frame'}
    entity_preview.entity = entity
    entity_preview.visible = true
    entity_preview.style.height = 150
    
    --content_frame.add{type='entity-preview', name='entity_preview', style='ugg_deep_frame'}
  end)
  
  script.on_event(defines.events.on_gui_closed, function(event)
    if event.gui_type ~= defines.gui_type.custom then return end
    local element = event.element
    if element.name == 'fluid_memory_unit_gui' then element.destroy() end
  end)
  
  