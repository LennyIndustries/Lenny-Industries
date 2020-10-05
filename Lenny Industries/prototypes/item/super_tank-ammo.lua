if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "ammo-category",
			name = "laser"
		},

		{
			type = "ammo",
			name = "laser-ammo",
			icons =
			{
				{
					icon = "__base__/graphics/icons/piercing-rounds-magazine.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				category = "laser",
				action =
				{
					type = "direct",
					repeat_count = 4,
					action_delivery =
					{
						type = "projectile",
						projectile = "super-laser",
						starting_speed = 1,
						starting_speed_deviation = 0.025,
						direction_deviation = 0.02, -- If 0 all pellets are in 1 group
						range_deviation = 0.01,
						max_range = 128
					}
				},
			},
			magazine_size = 1000,
			subgroup = "ammo",
			order = "a[basic-clips]-c",
			stack_size = 500
		},

		{
			type = "ammo",
			name = "super-piercing-bullet-magazine",
			icons =
			{
				{
					icon = "__base__/graphics/icons/firearm-magazine.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				category = "bullet",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							damage = { amount = 100, type = "physical"}
						}
					}
				},
			},
			magazine_size = 100,
			subgroup = "ammo",
			order = "a[basic-clips]-c",
			stack_size = 500
		},

		{
			type = "ammo",
			name = "super-piercing-shotgun-shell",
			icons =
			{
				{
					icon = "__base__/graphics/icons/shotgun-shell.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				{
					source_type = "default", -- From player
					category = "shotgun-shell",
					--target_type = "direction",
					clamp_position = true,
					action =
					{
						type = "direct",
						repeat_count = 32,
						action_delivery =
						{
							type = "projectile",
							projectile = "super-piercing-shotgun-pellet",
							starting_speed = 1,
							starting_speed_deviation = 0.05,
							direction_deviation = 0.4, -- If 0 all pellets are in 1 group
							range_deviation = 0.2,
							max_range = 64
						}
					}
				},
				{
					source_type = "vehicle", -- From vehicle
					category = "shotgun-shell",
					clamp_position = true,
					action =
					{
						type = "direct",
						repeat_count = 32,
						action_delivery =
						{
							type = "projectile",
							projectile = "super-piercing-shotgun-pellet",
							starting_speed = 1,
							starting_speed_deviation = 0.05,
							direction_deviation = 0.3, -- If 0 all pellets are in 1 group
							range_deviation = 0.15,
							max_range = 64
						}
					}
				}
			},
			magazine_size = 100,
			subgroup = "ammo",
			order = "b[shotgun]-b[piercing]",
			stack_size = 500
		},

		{
			type = "ammo",
			name = "super-flamethrower-ammo",
			icons =
			{
				{
					icon = "__base__/graphics/icons/flamethrower-ammo.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				{
					source_type = "default",
					category = "flamethrower",
					--target_type = "position",
					clamp_position = true,
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "stream",
							stream = "super-handheld-flamethrower-fire-stream"
						}
					}
				},
				{
					source_type = "vehicle",
					consumption_modifier = 1.125,
					category = "flamethrower",
					clamp_position = true,
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "stream",
							stream = "super-tank-flamethrower-fire-stream",
						}
					}
				}
			},
			magazine_size = 250,
			subgroup = "ammo",
			order = "e[flamethrower]",
			stack_size = 500
		},

		{
			type = "ammo",
			name = "super-explosive-rocket",
			icons =
			{
				{
					icon = "__base__/graphics/icons/rocket.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				category = "rocket",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "projectile",
						projectile = "super-explosive-rocket",
						starting_speed = 0.25,
						source_effects =
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						}
					}
				}
			},
			magazine_size = 10,
			subgroup = "ammo",
			order = "d[rocket-launcher]-b[explosive]",
			stack_size = 500
		},

		{
			type = "ammo",
			name = "super-explosive-cannon-shell",
			icons =
			{
				{
					icon = "__base__/graphics/icons/cannon-shell.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			ammo_type =
			{
				category = "cannon-shell",
				--target_type = "direction",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "projectile",
						projectile = "super-explosive-cannon-projectile",
						starting_speed = 1,
						direction_deviation = 0, --0.001
						range_deviation = 0, --0.001
						max_range = 64, --40
						min_range = 6.4,
						source_effects =
						{
							type = "create-explosion",
							entity_name = "explosion-gunshot"
						},
					}
				},
			},
			magazine_size = 5,
			subgroup = "ammo",
			order = "d[cannon-shell]-c",
			stack_size = 500
		}
	})
end
