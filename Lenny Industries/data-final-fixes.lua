--Arc Furnace
if mods["angelssmelting"] and settings.startup["ArcFurnace_Status"].value then
	if mods["bobplates"] and mods["bobelectronics"] then
		require("prototypes.recipe.arc-furnace")
	elseif mods["bobplates"] then
		require("prototypes.recipe.arc-furnace_nobobelec")
	elseif mods["bobelectronics"] then
		require("prototypes.recipe.arc-furnace_nobobplates")
	else
		require("prototypes.recipe.arc-furnace_nobob")
	end
	require("prototypes.entity.arc-furnace")
	require("prototypes.technology.arc-furnace")
end
--OP Beacon
if settings.startup["OPBeacon_Status"].value then
	require("prototypes.entity.beacon")
	require("prototypes.recipe.beacon")
	require("prototypes.technology.beacon")
end
--Quality Of Life
if settings.startup["Pipe_Status"].value then
	require("prototypes.overwrites.overwrite_pipes")
end
--Vehicle Equipment Grid
if settings.startup["VehicleGrid_Status"].value then
	if mods["bobvehicleequipment"] and mods["angelscomponents"] then
		require ("prototypes.equipment-grid.bob-angel")
	elseif mods["bobvehicleequipment"] then
		require ("prototypes.equipment-grid.bob")
	elseif mods["angelscomponents"] then
		require ("prototypes.equipment-grid.angel")
	else
		require ("prototypes.equipment-grid.vanilla")
	end
	require("prototypes.overwrites.overwrite_grid")
end
--Wood In Electronics
if mods["bobelectronics"] and mods["bobassembly"] and settings.startup["Electronics_Status"].value then
	if mods["aai-industry"] then
		require("prototypes.overwrites.overwrite_bobelectronics-aai")
	else
		require("prototypes.overwrites.overwrite_bobelectronics")
	end
end
--Unmineable Robots
if settings.startup["LRobot_Status"].value then
	require("prototypes.overwrites.overwrite_logistic-robot")
end
if settings.startup["CRobot_Status"].value then
	require("prototypes.overwrites.overwrite_construction-robot")
end
--Rebalance Bob's Steam
if mods["bobpower"] and settings.startup["BobPower_Status"].value then
	require("prototypes.overwrites.overwrite_bobpower")
end
--Better Inserters Research
if settings.startup["BetterInserters_Status"].value then
	require("prototypes.technology.betterinsertersresearch")
end
