if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "projectile",
			name = "super-piercing-shotgun-pellet",
			flags = {"not-on-map"},
			collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
			acceleration = 0,
			direction_only = true,
			piercing_damage = 200, --Drains as damage is done, '> 0' does action on object, '<= 0' does final action, if action does not do enough damage to destroy object final action is triggerd
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						type = "damage",
						damage = {amount = 125, type = "physical"}
					}
				}
			},
			final_action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						type = "damage",
						damage = {amount = 250, type = "physical"}
					}
				}
			},
			animation =
			{
				filename = "__base__/graphics/entity/bullet/bullet.png",
				frame_count = 1,
				width = 3,
				height = 50,
				priority = "high"
			}
		},

		{
			type = "stream", -- From vehicle
			name = "super-tank-flamethrower-fire-stream",
			flags = {"not-on-map"},
			smoke_sources =
			{
				{
					name = "soft-fire-smoke",
					frequency = 0.05,
					position = {0.0, 0},
					starting_frame_deviation = 60
				}
			},
			stream_light = {intensity = 1, size = 4 * 0.8},
			ground_light = {intensity = 0.8, size = 4 * 0.8},
			particle_buffer_size = 65,
			particle_spawn_interval = 2,
			particle_spawn_timeout = 2,
			particle_vertical_acceleration = 0.005 * 0.3,
			particle_horizontal_speed = 0.45,
			particle_horizontal_speed_deviation = 0.0035,
			particle_start_alpha = 0.5,
			particle_end_alpha = 1,
			particle_start_scale = 0.5,
			particle_loop_frame_count = 3,
			particle_fade_out_threshold = 0.9,
			particle_loop_exit_threshold = 0.25,
			action =
			{
				{
					type = "area",
					radius = 7.5,
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							{
								type = "damage",
								damage = { amount = 75, type = "fire" },
								apply_damage_to_trees = true
							}
						}
					}
				},
			},
			spine_animation =
			{
				filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-fire-stream-spine.png",
				blend_mode = "additive",
				line_length = 4,
				width = 32,
				height = 18,
				frame_count = 32,
				axially_symmetrical = false,
				direction_count = 1,
				animation_speed = 2,
				scale = 1.40625,
				shift = {0, 0}
			},
			shadow =
			{
				filename = "__base__/graphics/entity/acid-projectile/projectile-shadow.png",
				line_length = 5,
				width = 28,
				height = 16,
				frame_count = 33,
				priority = "high",
				scale = 0.9375,
				shift = {-0.09 * 0.5, 0.395 * 0.5}
			},
			particle =
			{
				filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 32,
				line_length = 8,
				scale = 1.5
			}
		},

		{
			type = "stream", -- From player
			name = "super-handheld-flamethrower-fire-stream",
			flags = {"not-on-map"},
			smoke_sources =
			{
				{
					name = "soft-fire-smoke",
					frequency = 0.05,
					position = {0.0, 0},
					starting_frame_deviation = 60
				}
			},
			stream_light = {intensity = 1, size = 4 * 0.8},
			ground_light = {intensity = 0.8, size = 4 * 0.8},
			particle_buffer_size = 65,
			particle_spawn_interval = 2,
			particle_spawn_timeout = 2,
			particle_vertical_acceleration = 0.005 * 0.6,
			particle_horizontal_speed = 0.25,
			particle_horizontal_speed_deviation = 0.0035,
			particle_start_alpha = 0.5,
			particle_end_alpha = 1,
			particle_start_scale = 0.2,
			particle_loop_frame_count = 3,
			particle_fade_out_threshold = 0.9,
			particle_loop_exit_threshold = 0.25,
			action =
			{
				{
					type = "area",
					radius = 3,
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							{
								type = "create-sticker",
								sticker = "fire-sticker",
								show_in_tooltip = true
							},
							{
								type = "damage",
								damage = { amount = 75, type = "fire" },
								apply_damage_to_trees = true
							}
						}
					}
				},
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							{
								type = "create-fire",
								entity_name = "fire-flame",
								show_in_tooltip = true,
								initial_ground_flame_count = 2
							}
						}
					}
				}
			},
			spine_animation =
			{
				filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-fire-stream-spine.png",
				blend_mode = "additive",
				line_length = 4,
				width = 32,
				height = 18,
				frame_count = 32,
				axially_symmetrical = false,
				direction_count = 1,
				animation_speed = 2,
				scale = 0.75,
				shift = {0, 0}
			},
			shadow =
			{
				filename = "__base__/graphics/entity/acid-projectile/projectile-shadow.png",
				line_length = 5,
				width = 28,
				height = 16,
				frame_count = 33,
				priority = "high",
				scale = 0.5,
				shift = {-0.09 * 0.5, 0.395 * 0.5}
			},
			particle =
			{
				filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 32,
				line_length = 8,
				scale = 0.8
			}
		},

		{
			type = "projectile",
			name = "super-explosive-rocket",
			flags = {"not-on-map"},
			acceleration = 0.025, -- 0.005
			turn_speed = 0.015, -- 0.003
			turning_speed_increases_exponentially_with_projectile_speed = true,
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "big-explosion"
						},
						{
							type = "damage",
							damage = {amount = 500, type = "explosion"}
						},
						{
							type = "create-entity",
							entity_name = "medium-scorchmark-tintable",
							check_buildability = true
						},
						{
							type = "invoke-tile-trigger",
							repeat_count = 1,
						},
						{
							type = "destroy-decoratives",
							from_render_layer = "decorative",
							to_render_layer = "object",
							include_soft_decoratives = true,
							include_decals = false,
							invoke_decorative_trigger = true,
							decoratives_with_trigger_only = false,
							radius = 5
						},
						{
							type = "nested-result",
							action =
							{
								type = "area",
								radius = 7.5,
								action_delivery =
								{
									type = "instant",
									target_effects =
									{
										{
		  								type = "damage",
		  								damage = {amount = 250, type = "explosion"}
										},
										{
		  								type = "create-entity",
		  								entity_name = "explosion"
										}
									}
								}
							}
						}
					}
				}
			},
			light = {intensity = 0.5, size = 4},
			animation =
			{
				filename = "__base__/graphics/entity/rocket/rocket.png",
				frame_count = 8,
				line_length = 8,
				width = 9,
				height = 35,
				shift = {0, 0},
				priority = "high"
			},
			shadow =
			{
				filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
				frame_count = 1,
				width = 7,
				height = 24,
				priority = "high",
				shift = {0, 0}
			},
			smoke =
			{
				{
					name = "smoke-fast",
					deviation = {0.15, 0.15},
					frequency = 1,
					position = {0, 1},
					slow_down_factor = 1,
					starting_frame = 3,
					starting_frame_deviation = 5,
					starting_frame_speed = 0,
					starting_frame_speed_deviation = 5
				}
			}
		},

		{
			type = "projectile",
			name = "super-explosive-cannon-projectile",
			flags = {"not-on-map"},
			collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
			acceleration = 0,
			direction_only = true,
			piercing_damage = 750,
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "damage",
							damage = { amount = 500, type = "physical"}
						}
					}
				}
			},
			final_action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "big-explosion",
							check_buildability = true
						},
						{
							type = "nested-result",
							action =
							{
								type = "area",
								perimeter = 25,
								radius = 25,
								action_delivery =
								{
									type = "instant",
									target_effects =
									{
										{
										type = "damage",
										damage = {amount = 1000, type = "explosion"}
										},
										{
											type = "create-entity",
											entity_name = "big-explosion"
										}
									}
								}
							}
						}
					}
				}
			},
			animation =
			{
				filename = "__base__/graphics/entity/bullet/bullet.png",
				frame_count = 1,
				width = 3,
				height = 50,
				priority = "high"
			},
		},

		{
			type = "projectile",
			name = "super-laser",
			flags = {"not-on-map"},
			collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
			acceleration = 0,
			direction_only = true,
			piercing_damage = 5000,
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						type = "damage",
						damage = { amount = 750, type = "laser"}
					}
				}
			},
			final_action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "laser-bubble"
						},
						{
							type = "damage",
							damage = { amount = 1500, type = "laser"}
						}
					}
				}
			},
			light = {intensity = 0.75, size = 10},
			animation =
			{
				filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
				tint = {r=1.0, g=0.0, b=1.0},
				frame_count = 1,
				width = 12,
				height = 33,
				priority = "high",
				blend_mode = "additive"
			}
		},

		{
			type = "beam",
			name = "super-beam",
			flags = {"not-on-map"},
			width = 0.75,
			damage_interval = 20,
			random_target_offset = true,
			action_triggered_automatically = false,
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "damage",
							damage = { amount = 2500, type = "laser"}
						}
					}
				}
			},
			head =
			{
				filename = "__base__/graphics/entity/laser-turret/hr-laser-body.png",
				tint = {1.0, 0.0, 1.0},
				line_length = 8,
				width = 64,
				height = 12,
				frame_count = 8,
				scale = 0.5,
				animation_speed = 0.5,
				blend_mode = "additive"
			},
			tail =
			{
				filename = "__base__/graphics/entity/laser-turret/hr-laser-end.png",
				tint = {1.0, 0.0, 1.0},
				width = 110,
				height = 62,
				frame_count = 8,
				shift = util.by_pixel(11.5, 1),
				scale = 0.5,
				animation_speed = 0.5,
				blend_mode = "additive"
			},
			body =
			{
				{
					filename = "__base__/graphics/entity/laser-turret/hr-laser-body.png",
					tint = {1.0, 0.0, 1.0},
					line_length = 8,
					width = 64,
					height = 12,
					frame_count = 8,
					scale = 0.5,
					animation_speed = 0.5,
					blend_mode = "additive"
				}
			},
			light_animations =
			{
				head =
				{
					filename = "__base__/graphics/entity/laser-turret/hr-laser-body-light.png",
					tint = {1.0, 0.0, 1.0},
					line_length = 8,
					width = 64,
					height = 12,
					frame_count = 8,
					scale = 0.5,
					animation_speed = 0.5,
				},
				tail =
				{
					filename = "__base__/graphics/entity/laser-turret/hr-laser-end-light.png",
					tint = {1.0, 0.0, 1.0},
					width = 110,
					height = 62,
					frame_count = 8,
					shift = util.by_pixel(11.5, 1),
					scale = 0.5,
					animation_speed = 0.5,
				},
				body =
				{
					{
						filename = "__base__/graphics/entity/laser-turret/hr-laser-body-light.png",
						tint = {1.0, 0.0, 1.0},
						line_length = 8,
						width = 64,
						height = 12,
						frame_count = 8,
						scale = 0.5,
						animation_speed = 0.5,
					}
				}
			},
			ground_light_animations =
			{
				head =
				{
					filename = "__base__/graphics/entity/laser-turret/laser-ground-light-head.png",
					line_length = 1,
					width = 256,
					height = 256,
					repeat_count = 8,
					scale = 0.5,
					shift = util.by_pixel(-32, 0),
					animation_speed = 0.5,
					tint = {0.5, 0.0, 0.5}
				},
				tail =
				{
					filename = "__base__/graphics/entity/laser-turret/laser-ground-light-tail.png",
					line_length = 1,
					width = 256,
					height = 256,
					repeat_count = 8,
					scale = 0.5,
					shift = util.by_pixel(32, 0),
					animation_speed = 0.5,
					tint = {0.5, 0.0, 0.5}
				},
				body =
				{
					filename = "__base__/graphics/entity/laser-turret/laser-ground-light-body.png",
					line_length = 1,
					width = 64,
					height = 256,
					repeat_count = 8,
					scale = 0.5,
					animation_speed = 0.5,
					tint = {0.5, 0.0, 0.5}
				}
			}
		}
	})
end
