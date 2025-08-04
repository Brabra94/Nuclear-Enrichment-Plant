-- prototypes/recipe.lua

-- Nuclear Enrichment Plant Recipe
data:extend({
    {
        type = "recipe",
        name = "nuclear-enrichment-plant",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Enrichment_Plant-icon.png",
        icon_size = 256,
        icon_mipmaps = 4,
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "steel-plate", amount = 50},
            {type = "item", name = "electronic-circuit", amount = 20},
            {type = "item", name = "concrete", amount = 100},
            {type = "item", name = "advanced-circuit", amount = 10}
        },
        results = {
            {type = "item", name = "nuclear-enrichment-plant", amount = 1}
        },
        localised_name = {"recipe-name.nuclear-enrichment-plant"},
        localised_description = {"recipe-description.nuclear-enrichment-plant"}
    }
})

-- Uranium Enrichment Recipe
data:extend({
    {
        type = "recipe",
        name = "uranium-enrichment",
        icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
        icon_size = 64,
        icon_mipmaps = 4,
        category = "nuclear-enrichment",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "uranium-ore", amount = 10},
            {type = "item", name = "electronic-circuit", amount = 5}
        },
        results = {
            {type = "item", name = "enriched-uranium", amount = 1, probability = 0.5},
            {type = "item", name = "radioactive-waste", amount = 5, probability = 0.5}
        },
        localised_name = {"recipe-name.uranium-enrichment"},
        localised_description = {"recipe-description.uranium-enrichment"}
    }
})

-- Waste Vitrification Recipe
data:extend({
    {
        type = "recipe",
        name = "waste-vitrification",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Enrichment_Plant-icon.png",
        icon_size = 64,
        icon_mipmaps = 4,
        category = "nuclear-processing",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "radioactive-waste", amount = 5},
            {type = "item", name = "stone", amount = 5}
        },
        results = {
            {type = "item", name = "radioactive-sand", amount = 5}
        },
        localised_name = {"recipe-name.waste-vitrification"},
        localised_description = {"recipe-description.waste-vitrification"}
    }
})

-- Sand Filtration Recipe
data:extend({
    {
        type = "recipe",
        name = "sand-filtration",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/filtration.png",
        icon_size = 1024,
        icon_mipmaps = 4,
        category = "nuclear-processing",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type = "item", name = "radioactive-sand", amount = 10},
            {type = "item", name = "electronic-circuit", amount = 2}
        },
        results = {
            {type = "item", name = "stone", amount = 8}
        },
        localised_name = {"recipe-name.sand-filtration"},
        localised_description = {"recipe-description.sand-filtration"}
    }
})

-- Safety Module 1 Recipe
data:extend({
    {
        type = "recipe",
        name = "safety-module-1",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {type = "item", name = "electronic-circuit", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        results = {
            {type = "item", name = "safety-module-1", amount = 1}
        },
        localised_name = {"recipe-name.safety-module-1"},
        localised_description = {"recipe-description.safety-module-1"}
    }
})

-- Safety Module 2 Recipe
data:extend({
    {
        type = "recipe",
        name = "safety-module-2",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "safety-module-1", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 5}
        },
        results = {
            {type = "item", name = "safety-module-2", amount = 1}
        },
        localised_name = {"recipe-name.safety-module-2"},
        localised_description = {"recipe-description.safety-module-2"}
    }
})

-- Safety Module 3 Recipe
data:extend({
    {
        type = "recipe",
        name = "safety-module-3",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "safety-module-2", amount = 1},
            {type = "item", name = "processing-unit", amount = 5}
        },
        results = {
            {type = "item", name = "safety-module-3", amount = 1}
        },
        localised_name = {"recipe-name.safety-module-3"},
        localised_description = {"recipe-description.safety-module-3"}
    }
})

 