if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "gun",
			name = "laser-rifle",
			icons =
			{
				{
					icon = "__base__/graphics/icons/submachine-gun.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-b[tank-machine-gun]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "laser",
				cooldown = 2.5,
				movement_slow_down_factor = 0.0,
				projectile_center = {-0.15625, -0.07812},
				projectile_creation_distance = 1,
				range = 128,
				sound =
				{
					{
						filename = "__base__/sound/fight/laser-1.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-2.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-3.ogg",
						volume = 1.0
					}
				},
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-laser-gun",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/submachine-gun.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-b[tank-machine-gun]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "laser",
				cooldown = 2.5,
				movement_slow_down_factor = 0.0,
				projectile_center = {-0.15625, -0.07812},
				projectile_creation_distance = 1,
				range = 128,
				sound =
				{
					{
						filename = "__base__/sound/fight/laser-1.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-2.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-3.ogg",
						volume = 1.0
					}
				},
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-machine-gun",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/submachine-gun.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-b[tank-machine-gun]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 4,
				movement_slow_down_factor = 0.1,
				shell_particle =
				{
					name = "shell-particle",
					direction_deviation = 0.1,
					speed = 0.1,
					speed_deviation = 0.03,
					center = {0, 0},
					creation_distance = -0.6875,
					starting_frame_speed = 0.4,
					starting_frame_speed_deviation = 0.1
				},
				projectile_center = {-0.15625, -0.07812},
				projectile_creation_distance = 1,
				range = 64, --35
				sound =
				{
					{
						filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
						volume = 0.75
					}
				},
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-shotgun",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/shotgun.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 5,
			subgroup = "gun",
			order = "b[shotgun]-a[basic]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "shotgun-shell",
				cooldown = 60,
				movement_slow_down_factor = 0.5,
				projectile_creation_distance = 1.125,
				range = 64,
				sound =
				{
					{
						filename = "__base__/sound/fight/pump-shotgun-1.ogg",
						volume = 0.5
					},
					{
						filename = "__base__/sound/fight/pump-shotgun-2.ogg",
						volume = 0.5
					},
					{
						filename = "__base__/sound/fight/pump-shotgun-3.ogg",
						volume = 0.5
					},
					{
						filename = "__base__/sound/fight/pump-shotgun-4.ogg",
						volume = 0.5
					},
					{
						filename = "__base__/sound/fight/pump-shotgun-5.ogg",
						volume = 0.5
					}
				}
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-flamethrower",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/flamethrower.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "gun",
			order = "b[flamethrower]-b[tank-flamethrower]",
			attack_parameters =
			{
				type = "stream",
				ammo_category = "flamethrower",
				cooldown = 1,
				gun_barrel_length = 1.4,
				gun_center_shift = { -0.17, -1.15 },
				range = 64,
				min_range = 2,
				cyclic_sound =
				{
					begin_sound =
					{
						{
							filename = "__base__/sound/fight/flamethrower-start.ogg",
							volume = 1
						}
					},
					middle_sound =
					{
						{
							filename = "__base__/sound/fight/flamethrower-mid.ogg",
							volume = 1
						}
					},
					end_sound =
					{
						{
							filename = "__base__/sound/fight/flamethrower-end.ogg",
							volume = 1
						}
					}
				}
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-rocket-launcher",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/rocket-launcher.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "gun",
			order = "z[spider]-a[rocket-launcher]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "rocket",
				cooldown = 60,
				range = 64,
				projectile_creation_distance = -0.5,
				projectile_center = {0, 0.3},
				projectile_orientation_offset = -0.0625,
				sound =
				{
					{
						filename = "__base__/sound/fight/rocket-launcher.ogg",
						volume = 0.7
					}
				}
			},
			stack_size = 1
		},

		{
			type = "gun",
			name = "super-tank-cannon",
			flags = {"hidden"},
			icons =
			{
				{
					icon = "__base__/graphics/icons/tank-cannon.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			subgroup = "gun",
			order = "z[tank]-a[cannon]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "cannon-shell",
				cooldown = 120,
				movement_slow_down_factor = 0,
				projectile_creation_distance = 1.6,
				projectile_center = {-0.15625, -0.07812},
				range = 64,
				sound =
				{
					{
						filename = "__base__/sound/fight/tank-cannon.ogg",
						volume = 1.0
					}
				},
			},
			stack_size = 1
		}
	})
end
