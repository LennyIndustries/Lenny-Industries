data:extend({
	{
		type = "technology",
		name = "inserter-capacity-bonus-8",
		icon = "__base__/graphics/technology/inserter-capacity.png",
		icon_size = 128,
		effects =
			{
				{
				type = "inserter-stack-size-bonus",
				modifier = 5
				},
				{
				type = "stack-inserter-capacity-bonus",
				modifier = 25
				}
			},
		prerequisites = {"inserter-capacity-bonus-7"},
		unit =
		{
			count = 700,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "c-o-i"
	},

	{
		type = "technology",
		name = "inserter-capacity-bonus-9",
		icon = "__base__/graphics/technology/inserter-capacity.png",
		icon_size = 128,
		effects =
			{
				{
				type = "inserter-stack-size-bonus",
				modifier = 10
				},
				{
				type = "stack-inserter-capacity-bonus",
				modifier = 25
				}
			},
		prerequisites = {"inserter-capacity-bonus-8"},
		unit =
		{
			count = 800,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "c-o-j"
	},

	{
		type = "technology",
		name = "inserter-capacity-bonus-10",
		icon = "__base__/graphics/technology/inserter-capacity.png",
		icon_size = 128,
		effects =
			{
				{
				type = "inserter-stack-size-bonus",
				modifier = 15
				},
				{
				type = "stack-inserter-capacity-bonus",
				modifier = 50
				}
			},
		prerequisites = {"inserter-capacity-bonus-9"},
		unit =
		{
			count = 900,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "c-o-k"
	},

	{
		type = "technology",
		name = "inserter-capacity-bonus-11",
		icon = "__base__/graphics/technology/inserter-capacity.png",
		icon_size = 128,
		effects =
			{
				{
				type = "inserter-stack-size-bonus",
				modifier = 20
				},
				{
				type = "stack-inserter-capacity-bonus",
				modifier = 50
				}
			},
		prerequisites = {"inserter-capacity-bonus-10"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "c-o-l"
	},
})
