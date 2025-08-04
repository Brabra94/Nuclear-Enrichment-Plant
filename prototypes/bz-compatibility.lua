-- prototypes/bz-compatibility.lua

local function replace_ingredient(recipe, old, new, amount)
  if not recipe or not recipe.ingredients then return end
  for i, ingr in ipairs(recipe.ingredients) do
    if ingr[1] == old or ingr.name == old then
      recipe.ingredients[i] = {type = "item", name = new, amount = amount or ingr[3] or ingr.amount}
      return
    end
  end
end

local uranium_enrichment_recipe = data.raw.recipe["uranium-enrichment"]
local nuclear_enrichment_plant_recipe = data.raw.recipe["nuclear-enrichment-plant"]

-- Titanium (bztitanium)
if mods["bztitanium"] then
  local util = require("__bztitanium__.data-util")
  if data.raw.item[util.titanium_plate] then
    if uranium_enrichment_recipe then
      replace_ingredient(uranium_enrichment_recipe, "electronic-circuit", util.titanium_plate, 10)
    end
    if nuclear_enrichment_plant_recipe then
      replace_ingredient(nuclear_enrichment_plant_recipe, "steel-plate", util.titanium_plate, 100)
    end
  end
end

-- Silicon (bzsilicon)
if mods["bzsilicon"] then
  local util = require("__bzsilicon__.data-util")
  if data.raw.item["silicon"] then
    if uranium_enrichment_recipe then
      table.insert(uranium_enrichment_recipe.ingredients, {type = "item", name = "silicon", amount = 20})
    end
    if nuclear_enrichment_plant_recipe then
      table.insert(nuclear_enrichment_plant_recipe.ingredients, {type = "item", name = "silicon", amount = 50})
    end
  end
end

-- Zirconium (bzzirconium)
if mods["bzzirconium"] then
  local util = require("__bzzirconium__.data-util")
  if data.raw.item["zirconium-plate"] then
    if nuclear_enrichment_plant_recipe then
      replace_ingredient(nuclear_enrichment_plant_recipe, "advanced-circuit", "zirconium-plate", 20)
    end
  end
end

-- Graphite (bzcarbon)
if mods["bzcarbon"] then
  local util = require("__bzcarbon__.data-util")
  if data.raw.item["graphite"] then
    if uranium_enrichment_recipe then
      table.insert(uranium_enrichment_recipe.ingredients, {type = "item", name = "graphite", amount = 30})
    end
    if nuclear_enrichment_plant_recipe then
      table.insert(nuclear_enrichment_plant_recipe.ingredients, {type = "item", name = "graphite", amount = 100})
    end
  end
end 