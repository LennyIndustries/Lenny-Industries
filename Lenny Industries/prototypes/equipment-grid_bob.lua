data : extend({
	{
		type = "equipment-grid",
		name = "vehicle-grid-overwrite",
		width = settings.startup["VehicleGrid_Width"].value,
		height = settings.startup["VehicleGrid_Height"].value,
		equipment_categories = {"vehicle", "armoured-vehicle", "car", "tank", "train", "locomotive", "cargo-wagon", "armoured-train", "armoured-locomotive", "armoured-cargo-wagon", "armor"},
	},
})
