if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "car",
			name = "supertank",
			icons =
			{
				{
					icon = "__base__/graphics/icons/tank.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
			minable = {mining_time = 1, result = "supertank"},
			max_health = 25000,
			corpse = "tank-remnants",
			dying_explosion = "tank-explosion",
			energy_per_hit_point = 0.5,
			has_belt_immunity = true,
			immune_to_tree_impacts = true,
			immune_to_rock_impacts = true,
			resistances =
			{
				{
					type = "physical",
					decrease = 10,
					percent = 75
				},
				{
					type = "impact",
					decrease = 0,
					percent = 75
				},
				{
					type = "fire",
					decrease = 10,
					percent = 50
				},
				{
					type = "acid",
					decrease = 0,
					percent =  25
				},
				{
					type = "poison",
					decrease = 0,
					percent =  12.5
				},
				{
					type = "explosion",
					decrease = 0,
					percent = 100
				},
				{
					type = "laser",
					decrease = 0,
					percent =  75
				}
			},
			collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
			selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
			effectivity = 1.0,
			braking_force = 50000,
			consumption = "1.0MW",
			terrain_friction_modifier = 0.2,
			friction_force = 0.002,
			turret_rotation_speed = 0.5,
			turret_return_timeout = 250,
			rotation_speed = 0.0075,
			tank_driving = true,
			weight = 20000,
			inventory_size = 50,
			burner =
			{
				effectivity = 1.0,
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
						priority = "low",
						width = 136,
						height = 106,
						frame_count = 2,
						direction_count = 64,
						shift = util.by_pixel(0, -16 + 6),
						animation_speed = 8,
						max_advance = 1,
						stripes =
						{
							{
								filename = "__base__/graphics/entity/tank/tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16
							}
						},
						hr_version =
						{
							priority = "low",
							width = 270,
							height = 212,
							frame_count = 2,
							direction_count = 64,
							shift = util.by_pixel(0, -16 + 6),
							animation_speed = 8,
							max_advance = 1,
							stripes =
							{
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
									width_in_frames = 2,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
									width_in_frames = 2,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
									width_in_frames = 2,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
									width_in_frames = 2,
									height_in_frames = 16
								}
							},
							scale = 0.5
						}
					},
					{
						priority = "low",
						width = 104,
						height = 83,
						frame_count = 2,
						apply_runtime_tint = true,
						direction_count = 64,
						shift = util.by_pixel(0, -27.5 + 6),
						max_advance = 1,
						line_length = 2,
						stripes = util.multiplystripes(2,
						{
							{
								filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
								width_in_frames = 1,
								height_in_frames = 22
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
								width_in_frames = 1,
								height_in_frames = 22
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
								width_in_frames = 1,
								height_in_frames = 20
							}
						}),
						hr_version =
						{
							priority = "low",
							width = 208,
							height = 166,
							frame_count = 2,
							apply_runtime_tint = true,
							direction_count = 64,
							shift = util.by_pixel(0, -27.5 + 6),
							max_advance = 1,
							line_length = 2,
							stripes = util.multiplystripes(2,
							{
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
									width_in_frames = 1,
									height_in_frames = 22
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
									width_in_frames = 1,
									height_in_frames = 22
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
									width_in_frames = 1,
									height_in_frames = 20
								}
							}),
							scale = 0.5
						}
					},
					{
						priority = "low",
						width = 151,
						height = 98,
						frame_count = 2,
						draw_as_shadow = true,
						direction_count = 64,
						shift = util.by_pixel(22.5, 1 + 6),
						max_advance = 1,
						stripes = util.multiplystripes(2,
						{
							{
								filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16
							},
							{
								filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16
							}
						}),
						hr_version =
						{
							priority = "low",
							width = 302,
							height = 194,
							frame_count = 2,
							draw_as_shadow = true,
							direction_count = 64,
							shift = util.by_pixel(22.5, 1 + 6),
							max_advance = 1,
							stripes = util.multiplystripes(2,
							{
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
									width_in_frames = 1,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
									width_in_frames = 1,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
									width_in_frames = 1,
									height_in_frames = 16
								},
								{
									filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
									width_in_frames = 1,
									height_in_frames = 16
								}
							}),
							scale = 0.5
						}
					}
				}
			},
			turret_animation =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/tank/tank-turret.png",
						priority = "low",
						line_length = 8,
						width = 90,
						height = 67,
						frame_count = 1,
						direction_count = 64,
						shift = util.by_pixel(2-2, -40.5 + 6),
						animation_speed = 8,
						hr_version =
						{
							filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
							priority = "low",
							line_length = 8,
							width = 179,
							height = 132,
							frame_count = 1,
							direction_count = 64,
							shift = util.by_pixel(2.25-2, -40.5 + 6),
							animation_speed = 8,
							scale = 0.5
						}
					},
					{
						filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
						priority = "low",
						line_length = 8,
						width = 36,
						height = 33,
						frame_count = 1,
						apply_runtime_tint = true,
						direction_count = 64,
						shift = util.by_pixel(2-2, -41.5 + 6),
						hr_version =
						{
							filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
							priority = "low",
							line_length = 8,
							width = 72,
							height = 66,
							frame_count = 1,
							apply_runtime_tint = true,
							direction_count = 64,
							shift = util.by_pixel(2-2, -41.5 + 6),
							scale = 0.5
						}
					},
					{
						filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
						priority = "low",
						line_length = 8,
						width = 97,
						height = 67,
						frame_count = 1,
						draw_as_shadow = true,
						direction_count = 64,
						shift = util.by_pixel(58.5-2, 0.5 + 6),
						hr_version =
						{
							filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
							priority = "low",
							line_length = 8,
							width = 193,
							height = 134,
							frame_count = 1,
							draw_as_shadow = true,
							direction_count = 64,
							shift = util.by_pixel(58.25-2, 0.5 + 6),
							scale = 0.5
						}
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
			guns = { "super-tank-machine-gun", "super-tank-cannon", "super-tank-shotgun", "super-tank-flamethrower", "super-tank-rocket-launcher", "super-tank-laser-gun" },
		}
	})
end
