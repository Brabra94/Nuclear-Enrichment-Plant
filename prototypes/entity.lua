-- prototypes/entity.lua

-- Nuclear Enrichment Plant
data:extend({
    {
        type = "assembling-machine",
        name = "nuclear-enrichment-plant",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Enrichment_Plant-icon.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "nuclear-enrichment-plant"},
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "nuke-explosion",
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        drawing_box = {{-2.5, -2.5}, {2.5, 2.5}},
        alert_icon_shift = util.by_pixel(-3, -12),
        graphics_set = {
            animation = {
                layers = {
                    {
                        priority = "high",
                        scale = 0.5,
                        filename = "__Nuclear_Enrichment_Plant__/graphics/entity/Nuclear_Enrichment_Plant-animation.png",
                        width = 400,
                        height = 480,
                        line_length = 10,
                        lines_per_file = 8,
                        frame_count = 80,
                        shift = util.by_pixel_hr(0, 0),
                        tint = { r = 1, g = 1, b = 1, a = 1 },
                        animation_speed = 0.9
                    },
                    {
                        filename = "__Nuclear_Enrichment_Plant__/graphics/entity/Nuclear_Enrichment_Plant-shadow.png",
                        priority = "high",
                        scale = 0.5,
                        width = 900,
                        height = 500,
                        line_length = 1,
                        lines_per_file = 1,
                        repeat_count = 80,
                        draw_as_shadow = true,
                        shift = util.by_pixel_hr(0, 0),
                        animation_speed = 0.9
                    }
                }
            },
            working_visualisations = {
                {
                    fadeout = true,
                    secondary_draw_order = 1,
                    animation = {
                        priority = "high",
                        scale = 0.5,
                        filename = "__Nuclear_Enrichment_Plant__/graphics/entity/Nuclear_Enrichment_Plant-emission1.png",
                        width = 400,
                        height = 480,
                        line_length = 10,
                        lines_per_file = 8,
                        frame_count = 80,
                        shift = util.by_pixel_hr(0, 0),
                        draw_as_glow = true,
                        blend_mode = "additive",
                        tint = { r = 1, g = 1, b = 1, a = 1 },
                        animation_speed = 0.9
                    }
                },
                {
                    fadeout = true,
                    secondary_draw_order = 2,
                    animation = {
                        priority = "high",
                        scale = 0.5,
                        filename = "__Nuclear_Enrichment_Plant__/graphics/entity/Nuclear_Enrichment_Plant-emission2.png",
                        width = 400,
                        height = 480,
                        line_length = 10,
                        lines_per_file = 8,
                        frame_count = 80,
                        shift = util.by_pixel_hr(0, 0),
                        draw_as_glow = true,
                        blend_mode = "additive",
                        tint = { r = 1, g = 1, b = 1, a = 1 },
                        animation_speed = 0.9
                    }
                },
                {
                    fadeout = true,
                    secondary_draw_order = 3,
                    animation = {
                        priority = "high",
                        scale = 0.5,
                        filename = "__Nuclear_Enrichment_Plant__/graphics/entity/Nuclear_Enrichment_Plant-color1.png",
                        width = 400,
                        height = 480,
                        line_length = 10,
                        lines_per_file = 8,
                        frame_count = 80,
                        shift = util.by_pixel_hr(0, 0),
                        draw_as_glow = true,
                        blend_mode = "multiplicative-with-alpha",
                        tint = { r = 1, g = 1, b = 1, a = 1 },
                        animation_speed = 0.9
                    }
                }
            }
        },
        crafting_categories = {"nuclear-enrichment", "nuclear-processing"},
        crafting_speed = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            input_flow_limit = "2MW",
            buffer_capacity = "4MW"
        },
        energy_usage = "1.5MW",
        module_slots = 4,
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        working_sound = {
            sound = {
                filename = "__Nuclear_Enrichment_Plant__/sound/nuclear-enrichment-plant-1.ogg",
                volume = 0.8
            },
            apparent_volume = 1.5
        },
        localised_name = {"entity-name.nuclear-enrichment-plant"},
        localised_description = {"entity-description.nuclear-enrichment-plant"}
    }
}) 