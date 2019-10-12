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

--Wood In Electronics
if mods["bobelectronics"] and mods["bobassembly"] and settings.startup["Electronics_Status"].value then
	if mods["aai-industry"] then
		require("prototypes.overwrites.overwrite_bobelectronics-aai")
	end
	require("prototypes.overwrites.overwrite_bobelectronics")
end
--[[Error after infinite reseach
--Better Inserters Research
if settings.startup["BetterInserters_Status"].value then
	require("prototypes.technology.betterinsertersresearch")
end
]]--
--Super Tank
if settings.startup["SuperTank_Status"].value then
	supertank_ammo_factor = 15
	require("prototypes.entity.super_tank")
	require("prototypes.item.super_tank")
	require("prototypes.recipe.super_tank")
	require("prototypes.technology.super_tank")
end

--Quality Of Life
if not settings.startup["Pipe_Status"].value then
	require("prototypes.overwrites.overwrite_pipes_disable")
end
--[[Error on no bob or file not found
--Locomotive Turret
if settings.startup["LocomotiveTurret_Status"].value then
	require("prototypes.equipment.locomotive-turret")
	require("prototypes.item.locomotive-turret")
	require("prototypes.recipe.locomotive-turret")
end
]]--
