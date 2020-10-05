if mods["angelssmelting"] and settings.startup["ArcFurnace_Status"].value then
	data:extend({
		{
			type = "recipe",
			name = "arc-furnace_1",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"blast-furnace", 1},
				{plate_tier_1, 5},
				{circuit_tier_1, 2},
				{"stone-brick", 10},
			},
			result="arc-furnace_1",
		},

		{
			type = "recipe",
			name = "arc-furnace_2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"blast-furnace-2", 1},
				{plate_tier_2, 5},
				{circuit_tier_2, 2},
				{"stone-brick", 10},
			},
			result="arc-furnace_2",
		},

		{
			type = "recipe",
			name = "arc-furnace_3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"blast-furnace-3", 1},
				{plate_tier_3, 5},
				{circuit_tier_3, 2},
				{"clay-brick", 10},
			},
			result="arc-furnace_3",
		},

		{
			type = "recipe",
			name = "arc-furnace_4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"blast-furnace-4", 1},
				{plate_tier_4, 5},
				{circuit_tier_4, 2},
				{"concrete-brick", 10},
			},
			result="arc-furnace_4",
		},
	})
end
