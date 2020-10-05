if settings.startup["VehicleGrid_Status"].value then
	data : extend({
		{
			type = "equipment-grid",
			name = "vehicle-grid-overwrite",
			width = settings.startup["VehicleGrid_Width"].value,
			height = settings.startup["VehicleGrid_Height"].value,
			equipment_categories = grid,
		},
	})
end
