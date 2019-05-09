data:extend({
	{
		type = "technology",
		name = "tech-supertank",
		icon = "__Lenny_Industries__/graphics/supertanks.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "supertank"
			},
			{
				type = "unlock-recipe",
				recipe = "super-explosive-cannon-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "super-piercing-bullet-magazine"
			},
		},
		prerequisites = {"tanks"},
		unit =
		{
			count = 60,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 60
		},
		order = "e-c-u",
	},
})
