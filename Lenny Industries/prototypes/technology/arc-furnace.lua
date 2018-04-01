data:extend({
	{
		type = "technology",
		name = "tech-arc-furnace_1",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"angels-metallurgy-1",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "arc-furnace_1"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"science-pack-1", 1},
			},
			time = 30
		},
		order = "c-a"
	},

	{
		type = "technology",
		name = "tech-arc-furnace_2",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"tech-arc-furnace_1",
			"angels-metallurgy-2",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "arc-furnace_2"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 30
		},
		order = "c-a"
	},

	{
		type = "technology",
		name = "tech-arc-furnace_3",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"tech-arc-furnace_2",
			"angels-metallurgy-3",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "arc-furnace_3"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 30
		},
		order = "c-a"
	},

	{
		type = "technology",
		name = "tech-arc-furnace_4",
		icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png",
		icon_size = 128,
		upgrade = true,
		prerequisites =
		{
			"tech-arc-furnace_3",
			"angels-metallurgy-4",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "arc-furnace_4"
			},
		},
		unit =
		{
			count = 50,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"high-tech-science-pack", 1},
			},
			time = 30
		},
		order = "c-a"
	},
})
