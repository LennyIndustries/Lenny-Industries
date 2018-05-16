data:extend({
	{
		type = "recipe",
		name = "supertank",
		enabled = false,
		energy_required = 12, -- craft time
		ingredients =
		{
			{"engine-unit", 16},
			{"steel-plate", 50},
			{"iron-gear-wheel", 15},
			{"advanced-circuit", 5}
		},
		result = "supertank"
	},

	{
		type = "recipe",
		name = "super-explosive-cannon-shell",
		enabled = false,
		energy_required = 10, -- craft time
		ingredients =
		{
			{"explosive-cannon-shell", 15},
			{"explosives", 10}
		},
		result = "super-explosive-cannon-shell"
	},

	{
		type = "recipe",
		name = "super-piercing-bullet-magazine",
		enabled = false,
		energy_required = 4, -- craft time
		ingredients =
		{
			{"copper-plate", 7},
			{"steel-plate", 2}
		},
		result = "super-piercing-bullet-magazine"
	},
})
