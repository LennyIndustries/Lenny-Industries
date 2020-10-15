if settings.startup["VehicleGrid_Status"].value then
	grid = {}

	for i, obj in pairs(data.raw["equipment-category"]) do
		table.insert(grid, obj.name)
	end
end
