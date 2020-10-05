if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "recipe",
			name = "laser-ammo",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"battery", 25},
				{"steel-plate", 2},
				{"plastic-bar", 5}
			},
			result = "laser-ammo"
		},

		{
			type = "recipe",
			name = "laser-rifle",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"battery", 3},
				{"steel-plate", 10},
				{"copper-plate", 5},
				{"iron-gear-wheel", 15}
			},
			result = "laser-rifle"
		},

		{
			type = "recipe",
			name = "supertank",
			enabled = false,
			energy_required = 12,
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
			energy_required = 10,
			ingredients =
			{
				{"explosive-cannon-shell", 5},
				{"explosives", 25}
			},
			result = "super-explosive-cannon-shell"
		},

		{
			type = "recipe",
			name = "super-piercing-bullet-magazine",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"piercing-rounds-magazine", 5},
				{"steel-plate", 2}
			},
			result = "super-piercing-bullet-magazine"
		},

		{
			type = "recipe",
			name = "super-flamethrower-ammo",
			category = "chemistry",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"flamethrower-ammo", 5},
				{type="fluid", name="petroleum-gas", amount=100},
				{"steel-plate", 2}
			},
			result = "super-flamethrower-ammo"
		},

		{
			type = "recipe",
			name = "super-explosive-rocket",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"explosive-rocket", 5},
				{"explosives", 10}
			},
			result = "super-explosive-rocket"
		},

		{
			type = "recipe",
			name = "super-piercing-shotgun-shell",
			enabled = false,
			energy_required = 4,
			ingredients =
			{
				{"piercing-shotgun-shell", 5},
				{"steel-plate", 3},
				{"copper-plate", 5}
			},
			result = "super-piercing-shotgun-shell"
		}
	})
end
