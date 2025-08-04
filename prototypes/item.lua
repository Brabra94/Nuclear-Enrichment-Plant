-- prototypes/item.lua

-- Enriched Uranium
data:extend({
    {
        type = "item",
        name = "enriched-uranium",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Enrichment_Plant-icon.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "a[enriched-uranium]",
        stack_size = 50
    }
})

-- Radioactive Sand
data:extend({
    {
        type = "item",
        name = "radioactive-sand",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Enrichment_Plant-icon.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "b[radioactive-sand]",
        stack_size = 100
    }
})



-- Radioactive Waste
data:extend({
    {
        type = "item",
        name = "radioactive-waste",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/Nuclear_Waste.png",
        icon_size = 256,
        icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "d[radioactive-waste]",
        stack_size = 50,
        localised_name = {"item-name.radioactive-waste"},
        localised_description = {"item-description.radioactive-waste"}
    }
})

-- Safety Module 1
data:extend({
    {
        type = "item",
        name = "safety-module-1",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/safety-module-1.png",
        icon_size = 256,
        icon_mipmaps = 4,
        subgroup = "module",
        order = "a[safety-module-1]",
        stack_size = 50,
        localised_name = {"item-name.safety-module-1"},
        localised_description = {"item-description.safety-module-1"}
    }
})

-- Safety Module 2
data:extend({
    {
        type = "item",
        name = "safety-module-2",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/safety-module-2.png",
        icon_size = 256,
        icon_mipmaps = 4,
        subgroup = "module",
        order = "b[safety-module-2]",
        stack_size = 50,
        localised_name = {"item-name.safety-module-2"},
        localised_description = {"item-description.safety-module-2"}
    }
})

-- Safety Module 3
data:extend({
    {
        type = "item",
        name = "safety-module-3",
        icon = "__Nuclear_Enrichment_Plant__/graphics/icons/safety-module-3.png",
        icon_size = 256,
        icon_mipmaps = 4,
        subgroup = "module",
        order = "c[safety-module-3]",
        stack_size = 50,
        localised_name = {"item-name.safety-module-3"},
        localised_description = {"item-description.safety-module-3"}
    }
})



-- Nuclear Enrichment Plant Item
data:extend({
    {
        type = "item",
        name = "nuclear-enrichment-plant",
        icon = "__Nuclear_Enrichment_Plant__/graphics/technology/Nuclear_Enrichment_Plant-icon-big.png",
        icon_size = 640,
        icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "a[nuclear-enrichment-plant]",
        place_result = "nuclear-enrichment-plant",
        stack_size = 10,
        localised_name = {"item-name.nuclear-enrichment-plant"},
        localised_description = {"item-description.nuclear-enrichment-plant"}
    }
}) 