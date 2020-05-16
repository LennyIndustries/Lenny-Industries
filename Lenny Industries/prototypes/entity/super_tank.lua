data:extend({
	{
		type = "car",
		name = "supertank",
		icon = "__Lenny_Industries__/graphics/supertank.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "supertank"},
		max_health = 25000 * settings.startup["SuperTank_Life"].value,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		energy_per_hit_point = 0.5,
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 75
			},
			{
				type = "physical",
				decrease = 15,
				percent = 50
			},
			{
				type = "impact",
				decrease = 50,
				percent = 75
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 50
			},
			{
				type = "acid",
				decrease = 10,
				percent =  50
			}
		},
		collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
		selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
		effectivity = 0.8,
		braking_power = "1200kW",
		breaking_speed = 1,
		consumption = "1.5MW",
		terrain_friction_modifier = 0.2,
		friction = 0.002,
		turret_rotation_speed = 0.5,
		turret_return_timeout = 500,
		rotation_speed = 0.0065,
		tank_driving = true,
		weight = 20000,
		inventory_size = 40,
		stop_trigger_speed = 0.2,
		burner =
		{
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "tank-smoke",
					deviation = {0.25, 0.25},
					frequency = 50,
					position = {0, 1.5},
					starting_frame = 0,
					starting_frame_deviation = 60
				}
			}
		},
		light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -14},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -14},
				size = 2,
				intensity = 0.6
			}
		},
		animation =
		{
			layers =
			{
				{
					width = 139,
					height = 110,
					frame_count = 2,
					direction_count = 64,
					shift = {-0.140625, -0.28125},
					animation_speed = 8,
					max_advance = 1,
					stripes =
					{
						{
							filename = "__Lenny_Industries__/graphics/base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__Lenny_Industries__/graphics/base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__Lenny_Industries__/graphics/base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__Lenny_Industries__/graphics/base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
					}
				},
				{
					width = 109,
					height = 88,
					frame_count = 2,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = {-0.140625, -0.65625},
					max_advance = 1,
					line_length = 2,
					stripes = util.multiplystripes( 2,
					{
						{
							filename = "__Lenny_Industries__/graphics/base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__Lenny_Industries__/graphics/base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__Lenny_Industries__/graphics/base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
					})
				},
				{
					width = 154,
					height = 99,
					frame_count = 2,
					draw_as_shadow = true,
					direction_count = 64,
					shift = {0.59375, 0.328125},
					max_advance = 1,
					stripes = util.multiplystripes(2,
					{
						{
							filename = "__Lenny_Industries__/graphics/base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
						filename = "__Lenny_Industries__/graphics/base-shadow-2.png",
						width_in_frames = 1,
						height_in_frames = 16,
						},
						{
						filename = "__Lenny_Industries__/graphics/base-shadow-3.png",
						width_in_frames = 1,
						height_in_frames = 16,
						},
						{
						filename = "__Lenny_Industries__/graphics/base-shadow-4.png",
						width_in_frames = 1,
						height_in_frames = 16,
						}
					})
				}
			}
		},
		turret_animation =
		{
			layers =
			{
				{
					filename = "__Lenny_Industries__/graphics/turret.png",
					line_length = 8,
					width = 92,
					height = 69,
					frame_count = 1,
					direction_count = 64,
					shift = {-0.15625, -1.07812},
					animation_speed = 8,
				},
				{
					filename = "__Lenny_Industries__/graphics/turret-mask.png",
					line_length = 8,
					width = 38,
					height = 29,
					frame_count = 1,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = {-0.15625, -1.23438},
				},
				{
					filename = "__Lenny_Industries__/graphics/turret-shadow.png",
					line_length = 8,
					width = 95,
					height = 67,
					frame_count = 1,
					draw_as_shadow = true,
					direction_count = 64,
					shift = {1.70312, 0.640625},
				}
			}
		},
		sound_no_fuel =
		{
			{
				filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
				volume = 0.6
			},
		},
		stop_trigger =
		{
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/car-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		sound_minimum_speed = 0.15;
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/fight/tank-engine.ogg",
				volume = 0.6
			},
			activate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-start.ogg",
				volume = 0.6
			},
			deactivate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-stop.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		guns = { "super-tank-cannon", "super-tank-machine-gun" },
	},

	{
		type = "gun",
		name = "super-tank-cannon",
		icon = "__base__/graphics/icons/tank-cannon.png",
		icon_size = 32,
		flags = {"hidden"},
		subgroup = "gun",
		order = "z[tank]-a[cannon]",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "cannon-shell",
			cooldown = 90 / settings.startup["SuperTank_Ammo"].value,
			movement_slow_down_factor = 0,
			projectile_creation_distance = 1.6,
			projectile_center = {-0.15625, -0.07812},
			range = 35,
			sound =
			{
				{
					filename = "__base__/sound/fight/tank-cannon.ogg",
					volume = 1.0
				}
			},
		},
		stack_size = 5
	},

	{
		type = "gun",
		name = "super-tank-machine-gun",
		icon = "__base__/graphics/icons/submachine-gun.png",
		icon_size = 32,
		subgroup = "gun",
		order = "a[basic-clips]-b[tank-machine-gun]",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "bullet",
			cooldown = 4,
			movement_slow_down_factor = 0.7,
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
			range = 35,
			sound =
			{
				{
					filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
					volume = 1.0
				}
			},
		},
		stack_size = 1
	},
})
