data : extend({
	{
		type = "equipment-grid",
		name = "vehicle-grid-overwrite",
		width = settings.startup["VehicleGrid_Width"].value,
		height = settings.startup["VehicleGrid_Height"].value,
		equipment_categories = {"angels-light-attack", "angels-heavy-attack", "angels-light-defense", "angels-heavy-defense", "angels-construction", "angels-movement", "angels-energy", "angels-repair", -- Angel's angelsindustries
		"farl-equipment", -- FARL farl
		"armor"}, -- Vanilla
  },
})
