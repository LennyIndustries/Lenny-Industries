if settings.startup["VehicleGrid_Status"].value then
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

	for i, obj in pairs(data.raw["artillery-wagon"]) do
		obj.equipment_grid = "vehicle-grid-overwrite"
	end

	for i, obj in pairs(data.raw["spider-vehicle"]) do
		obj.equipment_grid = "vehicle-grid-overwrite"
	end
end
