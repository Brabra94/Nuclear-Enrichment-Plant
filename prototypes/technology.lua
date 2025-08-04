-- prototypes/technology.lua

-- Nuclear Enrichment Technology
data:extend({
    {
        type = "technology",
        name = "nuclear-enrichment",
        icon = "__Nuclear_Enrichment_Plant__/graphics/technology/Nuclear_Enrichment_Plant-icon-big.png",
        icon_size = 1024,
        icon_mipmaps = 4,
        prerequisites = {"nuclear-power", "advanced-circuit"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "nuclear-enrichment-plant"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-enrichment"
            },
        },
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        order = "c-a",
        localised_name = {"technology-name.nuclear-enrichment"},
        localised_description = {"technology-description.nuclear-enrichment"}
    }
})

-- Nuclear Waste Processing Technology
data:extend({
    {
        type = "technology",
        name = "nuclear-waste-processing",
        icon = "__Nuclear_Enrichment_Plant__/graphics/technology/radioactive-treatment.png",
        icon_size = 1024,
        icon_mipmaps = 4,
        prerequisites = {"nuclear-enrichment"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "waste-vitrification"
            },
            {
                type = "unlock-recipe",
                recipe = "sand-filtration"
            }
        },
        unit = {
            count = 300,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 45
        },
        order = "c-b",
        localised_name = {"technology-name.nuclear-waste-processing"},
        localised_description = {"technology-description.nuclear-waste-processing"}
    }
})

-- Advanced Safety Systems Technology
data:extend({
    {
        type = "technology",
        name = "advanced-safety-systems",
        icon = "__Nuclear_Enrichment_Plant__/graphics/technology/safety-module-tech.png",
        icon_size = 1024,
        icon_mipmaps = 4,
        prerequisites = {"nuclear-enrichment", "processing-unit"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "safety-module-1"
            },
            {
                type = "unlock-recipe",
                recipe = "safety-module-2"
            },
            {
                type = "unlock-recipe",
                recipe = "safety-module-3"
            },

        },
        unit = {
            count = 800,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 90
        },
        order = "c-c",
        localised_name = {"technology-name.advanced-safety-systems"},
        localised_description = {"technology-description.advanced-safety-systems"}
    }
}) 