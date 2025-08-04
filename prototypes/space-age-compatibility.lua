-- prototypes/space-age-compatibility.lua

if mods["space-age"] then
    -- Mettre à jour les technologies avec les nouveaux packs de science
    local nuclear_enrichment_tech = data.raw.technology["nuclear-enrichment"]
    if nuclear_enrichment_tech and nuclear_enrichment_tech.unit and nuclear_enrichment_tech.unit.ingredients then
        table.insert(nuclear_enrichment_tech.unit.ingredients, {"metallurgic-science-pack", 1})
        table.insert(nuclear_enrichment_tech.unit.ingredients, {"electromagnetic-science-pack", 1})
        table.insert(nuclear_enrichment_tech.unit.ingredients, {"promethium-science-pack", 1})
    end

    local nuclear_waste_processing_tech = data.raw.technology["nuclear-waste-processing"]
    if nuclear_waste_processing_tech and nuclear_waste_processing_tech.unit and nuclear_waste_processing_tech.unit.ingredients then
        table.insert(nuclear_waste_processing_tech.unit.ingredients, {"metallurgic-science-pack", 1})
        table.insert(nuclear_waste_processing_tech.unit.ingredients, {"electromagnetic-science-pack", 1})
        table.insert(nuclear_waste_processing_tech.unit.ingredients, {"promethium-science-pack", 1})
    end

    local advanced_safety_systems_tech = data.raw.technology["advanced-safety-systems"]
    if advanced_safety_systems_tech and advanced_safety_systems_tech.unit and advanced_safety_systems_tech.unit.ingredients then
        table.insert(advanced_safety_systems_tech.unit.ingredients, {"metallurgic-science-pack", 1})
        table.insert(advanced_safety_systems_tech.unit.ingredients, {"electromagnetic-science-pack", 1})
        table.insert(advanced_safety_systems_tech.unit.ingredients, {"promethium-science-pack", 1})
    end

    -- Modifier les recettes pour utiliser les matériaux Space Age
    local uranium_enrichment_recipe = data.raw.recipe["uranium-enrichment"]
    if uranium_enrichment_recipe and uranium_enrichment_recipe.ingredients then
        -- Remplacer "electronic-circuit" par "supercapacitor"
        for index, ingredient in pairs(uranium_enrichment_recipe.ingredients) do
            if ingredient.name == "electronic-circuit" then
                uranium_enrichment_recipe.ingredients[index] = {type = "item", name = "supercapacitor", amount = ingredient.amount}
            end
        end

        -- Ajouter des matériaux Space Age
        table.insert(uranium_enrichment_recipe.ingredients, {type = "item", name = "superconductor", amount = 50})
        table.insert(uranium_enrichment_recipe.ingredients, {type = "item", name = "quantum-processor", amount = 25})
    end

    local nuclear_enrichment_plant_recipe = data.raw.recipe["nuclear-enrichment-plant"]
    if nuclear_enrichment_plant_recipe and nuclear_enrichment_plant_recipe.ingredients then
        -- Remplacer "advanced-circuit" par "supercapacitor"
        for index, ingredient in pairs(nuclear_enrichment_plant_recipe.ingredients) do
            if ingredient.name == "advanced-circuit" then
                nuclear_enrichment_plant_recipe.ingredients[index] = {type = "item", name = "supercapacitor", amount = ingredient.amount}
            end
        end

        -- Ajouter des matériaux Space Age
        table.insert(nuclear_enrichment_plant_recipe.ingredients, {type = "item", name = "superconductor", amount = 100})
        table.insert(nuclear_enrichment_plant_recipe.ingredients, {type = "item", name = "promethium-asteroid-chunk", amount = 20})
    end
end 