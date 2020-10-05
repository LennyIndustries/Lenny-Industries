if mods["bobelectronics"] and mods["bobassembly"] and settings.startup["Electronics_Status"].value then
	data:extend({
		{
			type = "recipe",
			name = "resin",
			category = "electronics",
			enabled = true,
			ingredients =
			{
				{"wood", 5},
			},
			energy_requred = 1,
			result = "resin",
			result_count = 1
		}
	})
	if mods["aai-industry"] then
		data:extend({
		{
			type = "recipe",
			name = "Stone tablet",
			category = "electronics",
			enabled = true,
			ingredients =
			{
				{"stone-brick", 1},
			},
			energy_requred = 1,
			result = "stone-tablet",
			result_count = 4
		}
		})
	end
end
