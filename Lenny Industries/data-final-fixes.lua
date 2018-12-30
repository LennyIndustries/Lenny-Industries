--Quality Of Life
if settings.startup["Pipe_Status"].value then
	require("prototypes.overwrites.overwrite_pipes")
end

--Vehicle Equipment Grid
if settings.startup["VehicleGrid_Status"].value then
	if mods["bobvehicleequipment"] and mods["angelsindustries"] and mods["FARL"] then
		require ("prototypes.equipment-grid.bob-angel-farl")
	elseif mods["bobvehicleequipment"] and mods["angelsindustries"] then
		require ("prototypes.equipment-grid.bob-angel")
	elseif mods["bobvehicleequipment"] and mods["FARL"] then
		require ("prototypes.equipment-grid.bob-farl")
	elseif mods["angelsindustries"] and mods["FARL"] then
		require ("prototypes.equipment-grid.angel-farl")
	elseif mods["bobvehicleequipment"] then
		require ("prototypes.equipment-grid.bob")
	elseif mods["angelsindustries"] then
		require ("prototypes.equipment-grid.angel")
	elseif mods["farl"] then
		require ("prototypes.equipment-grid.farl")
	else
		require ("prototypes.equipment-grid.vanilla")
	end
	require("prototypes.overwrites.overwrite_grid")
end

--Unmineable Robots
if settings.startup["LRobot_Status"].value then
	require("prototypes.overwrites.overwrite_logistic-robot")
end
if settings.startup["CRobot_Status"].value then
	require("prototypes.overwrites.overwrite_construction-robot")
end

--Rebalance Bob's Steam
--[[DEPRECATED
if mods["bobpower"] and settings.startup["BobPower_Status"].value then
	require("prototypes.overwrites.overwrite_bobpower")
end
]]--

--Data Dump (DEBUG)
--log( serpent.block( data.raw, {comment = false, numformat = '%1.8g' } ) )
