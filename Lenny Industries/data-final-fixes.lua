--Arc Furnace
if mods["angelssmelting"] and settings.startup["ArcFurnace_Status"].value then
	if mods["bobplates"] and mods["bobelectronics"] then
		require("prototypes.arc-furnace-recipe")
	elseif mods["bobplates"] then
		require("prototypes.arc-furnace-recipe_nobobelec")
	elseif mods["bobelectronics"] then
		require("prototypes.arc-furnace-recipe_nobobplates")
	else
		require("prototypes.arc-furnace-recipe_nobob")
	end
	require("prototypes.arc-furnace")
	require("prototypes.arc-furnace-technology")
end
--OP Beacon
if settings.startup["OPBeacon_Status"].value then
	require("prototypes.beacon")
	require("prototypes.beacon-recipe")
	require("prototypes.beacon-technology")
end
--Quality Of Life
if settings.startup["Pipe_Status"].value then
	for i, obj in pairs(data.raw["pipe"]) do
		obj.fast_replaceable_group = "pipe"
		obj.collision_mask = {"object-layer"}
	end

	for i, obj in pairs(data.raw["pipe-to-ground"]) do
		obj.fast_replaceable_group = "pipe-to-ground"
		obj.collision_mask = {"object-layer"}
	end
end
--Vehicle Equipment Grid
if settings.startup["VehicleGrid_Status"].value then
	if mods["bobvehicleequipment"] and mods["angelscomponents"] then
		require ("prototypes.equipment-grid_bob-angel")
	elseif mods["bobvehicleequipment"] then
		require ("prototypes.equipment-grid_bob")
	elseif mods["angelscomponents"] then
		require ("prototypes.equipment-grid_angel")
	else
		require ("prototypes.equipment-grid_vanilla")
	end

	for i, obj in pairs(data.raw["car"]) do
	  obj.equipment_grid = "vehicle-grid-overwrite"
	end

	for i, obj in pairs(data.raw["locomotive"]) do
	  obj.equipment_grid = "vehicle-grid-overwrite"
	end

	for i, obj in pairs(data.raw["cargo-wagon"]) do
	  obj.equipment_grid = "vehicle-grid-overwrite"
	end

	for i, obj in pairs(data.raw["fluid-wagon"]) do
	  obj.equipment_grid = "vehicle-grid-overwrite"
	end
end
--Wood In Electronics
if mods["bobelectronics"] and settings.startup["Electronics_Status"].value then
	data:extend({
		{
			type = "recipe",
			name = "wood",
			category = "electronics",
			enabled = true,
			ingredients =
			{
			  {"raw-wood", 1},
			},
			result = "wood",
			result_count = 2
		},
		{
			type = "recipe",
			name = "resin",
			category = "electronics",
			enabled = true,
			ingredients =
			{
			  {"raw-wood", 5},
			},
			energy_requred = 1,
			result = "resin",
			result_count = 1
		}
	})
	if mods["aai-industry"] then
		data:extend({
		{
			type = "recipe",
			name = "Stone tablet",
			category = "electronics",
			enabled = true,
			ingredients =
			{
			  {"stone-brick", 1},
			},
			energy_requred = 1,
			result = "stone-tablet",
			result_count = 4
		}
		})
	end
end
