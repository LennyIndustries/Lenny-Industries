if settings.startup["SuperTank_Status"].value then
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
					recipe = "laser-rifle"
				},
				{
					type = "unlock-recipe",
					recipe = "supertank"
				},
				{
					type = "unlock-recipe",
					recipe = "super-piercing-bullet-magazine"
				},
				{
					type = "unlock-recipe",
					recipe = "laser-ammo"
				},
				{
					type = "unlock-recipe",
					recipe = "super-piercing-shotgun-shell"
				},
				{
					type = "unlock-recipe",
					recipe = "super-flamethrower-ammo"
				},
				{
					type = "unlock-recipe",
					recipe = "super-explosive-rocket"
				},
				{
					type = "unlock-recipe",
					recipe = "super-explosive-cannon-shell"
				}
			},
			prerequisites =
			{
				"automobilism",
				"explosives",
				"military-2"
			},
			unit =
			{
				count = 60,
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"military-science-pack", 2}
				},
				time = 60
			},
			order = "e-c-u",
		},
	})

	table.insert(data.raw["technology"]["weapon-shooting-speed-1"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.1})
	table.insert(data.raw["technology"]["weapon-shooting-speed-2"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.2})
	table.insert(data.raw["technology"]["weapon-shooting-speed-3"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.2})
	table.insert(data.raw["technology"]["weapon-shooting-speed-4"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.3})
	table.insert(data.raw["technology"]["weapon-shooting-speed-5"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.4})
	table.insert(data.raw["technology"]["weapon-shooting-speed-6"].effects, {type = "gun-speed", ammo_category = "laser", modifier = 0.4})

	table.insert(data.raw["technology"]["energy-weapons-damage-1"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.2})
	table.insert(data.raw["technology"]["energy-weapons-damage-2"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.2})
	table.insert(data.raw["technology"]["energy-weapons-damage-3"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.3})
	table.insert(data.raw["technology"]["energy-weapons-damage-4"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.4})
	table.insert(data.raw["technology"]["energy-weapons-damage-5"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.5})
	table.insert(data.raw["technology"]["energy-weapons-damage-6"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.6})
	table.insert(data.raw["technology"]["energy-weapons-damage-7"].effects, {type = "ammo-damage", ammo_category = "laser", modifier = 0.7})
end
