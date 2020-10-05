grid = {"armor"} -- Vanilla

if mods["bobvehicleequipment"] then
	bve = {"vehicle", "armoured-vehicle", "car", "tank", "train", "locomotive", "cargo-wagon", "armoured-train", "armoured-locomotive", "armoured-cargo-wagon"} -- Bob's bobvehicleequipment
	table.insert(grid, bve)
end

if mods["angelsindustries"] then
	ai = {"angels-light-attack", "angels-heavy-attack", "angels-light-defense", "angels-heavy-defense", "angels-construction", "angels-movement", "angels-energy", "angels-repair"} -- Angel's angelscomponents -->> check angelsindustries
	table.insert(grid, ai)
end

if mods["FARL"] then
	table.insert(grid, "farl-equipment") -- FARL farl
end

if settings.startup["LocomotiveTurret_Status"].value and (not mods["bobvehicleequipment"]) then
	table.insert(grid, "locomotive") -- Lenny Industries
end
