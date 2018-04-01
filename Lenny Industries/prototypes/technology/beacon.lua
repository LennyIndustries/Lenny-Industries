data:extend({
	{
		type = "technology",
		name = "tech-op_beacon_1",
		icon = "__base__/graphics/technology/effect-transmission.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "op_beacon_1"
			}
		},
		prerequisites =
		{
			"effect-transmission",
			"advanced-electronics-2"
		},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
			},
			time = 60
		},
		order = "i-i-2"
	},

	{
		type = "technology",
		name = "tech-op_beacon_2",
		icon = "__base__/graphics/technology/effect-transmission.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "op_beacon_2"
			}
		},
		prerequisites =
		{
			"tech-op_beacon_1"
		},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-pack-1", 4},
				{"science-pack-2", 4},
				{"science-pack-3", 2},
				{"production-science-pack", 2},
			},
			time = 120
		},
		order = "i-i-3"
	},
})