if mods["angelssmelting"] and settings.startup["ArcFurnace_Status"].value then
	data:extend({
		{
			type = "technology",
			name = "tech-arc-furnace-1",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/tech-lightning-bolt.png"
				}
			},
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
					{"automation-science-pack", 1},
				},
				time = 30
			},
			order = "c-a"
		},

		{
			type = "technology",
			name = "tech-arc-furnace-2",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/tech-lightning-bolt.png"
				}
			},
			icon_size = 128,
			upgrade = true,
			prerequisites =
			{
				"tech-arc-furnace-1",
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
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
				},
				time = 30
			},
			order = "c-a"
		},

		{
			type = "technology",
			name = "tech-arc-furnace-3",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/tech-lightning-bolt.png"
				}
			},
			icon_size = 128,
			upgrade = true,
			prerequisites =
			{
				"tech-arc-furnace-2",
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
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
				},
				time = 30
			},
			order = "c-a"
		},

		{
			type = "technology",
			name = "tech-arc-furnace-4",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/technology/blast-furnace-tech.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/tech-lightning-bolt.png"
				}
			},
			icon_size = 128,
			upgrade = true,
			prerequisites =
			{
				"tech-arc-furnace-3",
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
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"utility-science-pack", 1},
				},
				time = 30
			},
			order = "c-a"
		},
	})
end
