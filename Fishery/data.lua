--local styles = data.raw["gui-style"].default
--
--styles.statsgui_label = {
--  type = "label_style",
--  font = "default-game",
--  font_color = default_font_color,
--}
--
--
--local spritePrototype = {}
--spritePrototype.type = "sprite"
--spritePrototype.filename = "__testCustomGui__/graphics/image.png"
--spritePrototype.name = "testSprite"
--spritePrototype.width = 400
--spritePrototype.height =  400
--data:extend({ spritePrototype })
--
--styles.imagestyle_test = {
--  margin = 0,
--  padding = 0,
--  type = "image_style",
--}
--
--styles.statsgui_frame = {
--  maximal_width = 400,
--  maximal_height = 400,
--  type = "frame_style",
--  margin = -2,
--  padding = -2,
--  use_header_filler = false,
--  drag_by_title = true,
--  use_header_filler = true
--}

require("prototypes.fishes.wild")

local assembler = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
assembler.name = "fishery_fish_breeder"
assembler.fixed_recipe = "wild_fish",
data:extend({ assembler })

local styles = data.raw["gui-style"].default

styles["ugg_content_frame"] = {
    type = "frame_style",
    parent = "inside_shallow_frame_with_padding",
    vertically_stretchable = "on"
}

styles["ugg_controls_flow"] = {
    type = "horizontal_flow_style",
    vertical_align = "center",
    horizontal_spacing = 16
}

styles["ugg_controls_textfield"] = {
    type = "textbox_style",
    width = 36
}

styles["ugg_deep_frame"] = {
    type = "empty_widget_style",
    vertically_stretchable = "on",
    horizontally_stretchable = "on",
      padding = 0,
      graphical_set =
      {
        base =
        {
          position = {17, 0}, corner_size = 8,
          center = {position = {76, 8}, size = {1, 1}},
          draw_type = "outer"
        },
        shadow = default_inner_shadow
      },
}