-- control.lua

-- Initialisation de la table globale pour stocker les usines d'enrichissement
script.on_init(function()
    global.enrichment_plants = {}
end)

-- Ajouter une usine à la surveillance
script.on_event(defines.events.on_built_entity, function(event)
    if not global then return end
    local entity = event.created_entity
    if entity.name == "nuclear-enrichment-plant" then
        if not global.enrichment_plants then
            global.enrichment_plants = {}
        end
        table.insert(global.enrichment_plants, {
            entity = entity,
            previous_progress = 0
        })
    end
end)

-- Supprimer une usine détruite ou minée
local function remove_plant(entity)
    if not global or not global.enrichment_plants then return end
    for i, data in ipairs(global.enrichment_plants) do
        if data.entity == entity then
            table.remove(global.enrichment_plants, i)
            break
        end
    end
end

script.on_event(defines.events.on_pre_player_mined_item, function(event)
    if not global then return end
    remove_plant(event.entity)
end)

script.on_event(defines.events.on_entity_died, function(event)
    if not global then return end
    local entity = event.entity
    if entity.name == "nuclear-enrichment-plant" then
        remove_plant(entity)
        game.print("⚠️ EXPLOSION NUCLÉAIRE ! L'usine d'enrichissement a été détruite !")
    end
end)

-- Tick pour surveiller les recettes et déclencher l'explosion via les PV
script.on_event(defines.events.on_tick, function(event)
    if not global or not global.enrichment_plants then return end
    
    -- Détecter les usines manquantes lors du premier tick
    if event.tick == 1 then
        for _, surface in pairs(game.surfaces) do
            local entities = surface.find_entities_filtered{name = "nuclear-enrichment-plant"}
            for _, entity in pairs(entities) do
                -- Vérifier si l'entité n'est pas déjà dans la liste
                local found = false
                for _, data in ipairs(global.enrichment_plants) do
                    if data.entity == entity then
                        found = true
                        break
                    end
                end
                
                if not found then
                    table.insert(global.enrichment_plants, {
                        entity = entity,
                        previous_progress = 0
                    })
                end
            end
        end
        
        -- Debug: Afficher le nombre d'usines trouvées
        game.print("🔍 Debug: " .. #global.enrichment_plants .. " usines d'enrichissement trouvées dans la sauvegarde")
    end
    
    if event.tick % 30 ~= 0 then return end

    for i = #global.enrichment_plants, 1, -1 do
        local data = global.enrichment_plants[i]
        local plant = data.entity

        if plant.valid then
            local progress = plant.crafting_progress or 0
            local recipe = plant.get_recipe()

            if recipe and recipe.name == "uranium-enrichment" and
               data.previous_progress < 1 and progress >= 1 then
                
                -- Debug: Confirmer que l'explosion va se déclencher
                game.print("💥 EXPLOSION DÉCLENCHÉE ! Recette terminée !")

                -- Debug: Confirmer l'appel de la fonction
                game.print("🚀 Destruction de l'usine...")

                -- Réduire les PV pour déclencher l'explosion naturelle
                plant.damage(plant.health, plant.force, "explosion")
            end

            data.previous_progress = progress
        else
            table.remove(global.enrichment_plants, i)
        end
    end
end)
