data : extend({
	{
		type = "equipment-grid",
		name = "vehicle-grid-overwrite",
		width = settings.startup["VehicleGrid_Width"].value,
		height = settings.startup["VehicleGrid_Height"].value,
		equipment_categories = {"vehicle", "armoured-vehicle", "car", "tank", "train", "locomotive", "cargo-wagon", "armoured-train", "armoured-locomotive", "armoured-cargo-wagon", -- Bob's bobvehicleequipment
		"angels-light-attack", "angels-heavy-attack", "angels-light-defense", "angels-heavy-defense", "angels-construction", "angels-movement", "angels-energy", "angels-repair", -- Angel's angelscomponents -->> check angelsindustries
		"farl-equipment", -- FARL farl
		"armor"}, -- Vanilla
	},
})
