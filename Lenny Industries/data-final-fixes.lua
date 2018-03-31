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
	require("prototypes.overwrite_pipes")
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
	require("prototypes.overwrite_grid")
end
--Wood In Electronics
if mods["bobelectronics"] and mods["bobassembly"] and settings.startup["Electronics_Status"].value then
	if mods["aai-industry"] then
		require("prototypes.overwrite_bobelectronics-aai")
	else
		require("prototypes.overwrite_bobelectronics")
	end
end
--Unmineable Robots
if settings.startup["LRobot_Status"].value then
	for name, entity in pairs(data.raw["logistic-robot"]) do
	  entity.minable = nil
	end
end
if settings.startup["CRobot_Status"].value then
	for name, entity in pairs(data.raw["construction-robot"]) do
	  entity.minable = nil
	end
end
--Rebalance Bob's Steam
if mods["bobpower"] and settings.startup["BobPower_Status"].value then
	require("prototypes.overwrite_bobpower")
end
