if mods["angelssmelting"] and settings.startup["ArcFurnace_Status"].value then
	data:extend({
		{
			type = "item",
			name = "arc-furnace_1",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				},
				{
					icon = "__Lenny_Industries__/graphics/lightning-bolt.png"
				}
			},
			icon_size = 32,
			subgroup = "angels-blast-furnace",
			order = "a[arc-furnace_1]",
			place_result = "arc-furnace_1",
			stack_size = 10,
		},
		{
			type = "assembling-machine",
			name = "arc-furnace_1",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				}
			},
			icon_size = 32,
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "arc-furnace_1"},
			fast_replaceable_group = "blast-furnace",
			max_health = 300,
			corpse = "big-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
			selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
			module_specification =
			{
				module_slots = 4
			},
			allowed_effects = {"consumption", "speed", "productivity", "pollution"},
			crafting_categories = {"blast-smelting"},
			crafting_speed = 1,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.02
			},
			energy_usage = "300kW",
			ingredient_count = 4,
			animation =
			{
				layers =
				{
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
						priority = "high",
						width = 164,
						height = 189,
						shift = util.by_pixel(0, -14),
					},
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
						priority = "high",
						width = 224,
						height = 124,
						shift = util.by_pixel(30, 20),
						draw_as_shadow = true,
					}
				}
			},
			working_visualisations =
			{
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
						priority = "high",
						width = 12,
						height = 25,
						line_length = 8,
						frame_count = 48,
						animation_speed = 0.5,
						shift = util.by_pixel(4, 29),
						draw_as_glow = true,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
						priority = "high",
						width = 60,
						height = 43,
						blend_mode = "additive",
						shift = util.by_pixel(5, 39),
						draw_as_glow = true,
						scale = 0.75,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
						priority = "high",
						width = 164,
						height = 189,
						blend_mode = "additive",
						shift = util.by_pixel(0, -14),
						draw_as_glow = true,
					}
				}
			},
			vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound =
			{
				sound = { filename = "__base__/sound/oil-refinery.ogg" },
				idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
				apparent_volume = 2.5,
			},
			fluid_boxes =
			{
				off_when_no_fluid_recipe = true,
				{
					production_type = "input",
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = -1,
					pipe_connections = {{ type="input", position = {0, 3} }}
				},
				{
					production_type = "output",
					pipe_covers = pipecoverspictures(),
					base_level = 1,
					pipe_connections = {{ position = {0, -3} }}
				}
			},
		},

		{
			type = "item",
			name = "arc-furnace_2",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_2.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				},
				{
					icon = "__Lenny_Industries__/graphics/lightning-bolt.png"
				}
			},
			icon_size = 32,
			subgroup = "angels-blast-furnace",
			order = "b[arc-furnace_2]",
			place_result = "arc-furnace_2",
			stack_size = 10,
		},
		{
			type = "assembling-machine",
			name = "arc-furnace_2",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_2.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				}
			},
			icon_size = 32,
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "arc-furnace_2"},
			fast_replaceable_group = "blast-furnace",
			max_health = 300,
			corpse = "big-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
			selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
			module_specification =
			{
				module_slots = 4
			},
			allowed_effects = {"consumption", "speed", "productivity", "pollution"},
			crafting_categories = {"blast-smelting"},
			crafting_speed = 1.5,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.02
			},
			energy_usage = "400kW",
			ingredient_count = 4,
			animation =
			{
				layers =
				{
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
						priority = "high",
						width = 164,
						height = 189,
						shift = util.by_pixel(0, -14),
					},
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
						priority = "high",
						width = 224,
						height = 124,
						shift = util.by_pixel(30, 20),
						draw_as_shadow = true,
					}
				}
			},
			working_visualisations =
			{
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
						priority = "high",
						width = 12,
						height = 25,
						line_length = 8,
						frame_count = 48,
						animation_speed = 0.5,
						shift = util.by_pixel(4, 29),
						draw_as_glow = true,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
						priority = "high",
						width = 60,
						height = 43,
						blend_mode = "additive",
						shift = util.by_pixel(5, 39),
						draw_as_glow = true,
						scale = 0.75,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
						priority = "high",
						width = 164,
						height = 189,
						blend_mode = "additive",
						shift = util.by_pixel(0, -14),
						draw_as_glow = true,
					}
				}
			},
			vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound =
			{
				sound = { filename = "__base__/sound/oil-refinery.ogg" },
				idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
				apparent_volume = 2.5,
			},
			fluid_boxes =
			{
				off_when_no_fluid_recipe = true,
				{
					production_type = "input",
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = -1,
					pipe_connections = {{ type="input", position = {0, 3} }}
				},
				{
					production_type = "output",
					pipe_covers = pipecoverspictures(),
					base_level = 1,
					pipe_connections = {{ position = {0, -3} }}
				}
			},
		},

		{
			type = "item",
			name = "arc-furnace_3",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_3.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				},
				{
					icon = "__Lenny_Industries__/graphics/lightning-bolt.png"
				}
			},
			icon_size = 32,
			subgroup = "angels-blast-furnace",
			order = "c[arc-furnace_3]",
			place_result = "arc-furnace_3",
			stack_size = 10,
		},
		{
			type = "assembling-machine",
			name = "arc-furnace_3",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_3.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				}
			},
			icon_size = 32,
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "arc-furnace_3"},
			fast_replaceable_group = "blast-furnace",
			max_health = 300,
			corpse = "big-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
			selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
			module_specification =
			{
				module_slots = 4
			},
			allowed_effects = {"consumption", "speed", "productivity", "pollution"},
			crafting_categories = {"blast-smelting"},
			crafting_speed = 2,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.02
			},
			energy_usage = "500kW",
			ingredient_count = 4,
			animation =
			{
				layers =
				{
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
						priority = "high",
						width = 164,
						height = 189,
						shift = util.by_pixel(0, -14),
					},
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
						priority = "high",
						width = 224,
						height = 124,
						shift = util.by_pixel(30, 20),
						draw_as_shadow = true,
					}
				}
			},
			working_visualisations =
			{
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
						priority = "high",
						width = 12,
						height = 25,
						line_length = 8,
						frame_count = 48,
						animation_speed = 0.5,
						shift = util.by_pixel(4, 29),
						draw_as_glow = true,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
						priority = "high",
						width = 60,
						height = 43,
						blend_mode = "additive",
						shift = util.by_pixel(5, 39),
						draw_as_glow = true,
						scale = 0.75,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
						priority = "high",
						width = 164,
						height = 189,
						blend_mode = "additive",
						shift = util.by_pixel(0, -14),
						draw_as_glow = true,
					}
				}
			},
			vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound =
			{
				sound = { filename = "__base__/sound/oil-refinery.ogg" },
				idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
				apparent_volume = 2.5,
			},
			fluid_boxes =
			{
				off_when_no_fluid_recipe = true,
				{
					production_type = "input",
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = -1,
					pipe_connections = {{ type="input", position = {0, 3} }}
				},
				{
					production_type = "output",
					pipe_covers = pipecoverspictures(),
					base_level = 1,
					pipe_connections = {{ position = {0, -3} }}
				}
			},
		},

		{
			type = "item",
			name = "arc-furnace_4",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_4.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				},
				{
					icon = "__Lenny_Industries__/graphics/lightning-bolt.png"
				}
			},
			icon_size = 32,
			subgroup = "angels-blast-furnace",
			order = "d[arc-furnace_4]",
			place_result = "arc-furnace_4",
			stack_size = 10,
		},
		{
			type = "assembling-machine",
			name = "arc-furnace_4",
			icons =
			{
				{
					icon = "__angelssmelting__/graphics/icons/blast-furnace.png",
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_4.png",
					tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
					scale = 0.32,
					shift = {-12, -12},
				}
			},
			icon_size = 32,
			flags = {"placeable-neutral","player-creation"},
			minable = {mining_time = 1, result = "arc-furnace_4"},
			fast_replaceable_group = "blast-furnace",
			max_health = 300,
			corpse = "big-remnants",
			dying_explosion = "medium-explosion",
			collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
			selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
			module_specification =
			{
				module_slots = 4
			},
			allowed_effects = {"consumption", "speed", "productivity", "pollution"},
			crafting_categories = {"blast-smelting"},
			crafting_speed = 3,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.02
			},
			energy_usage = "600kW",
			ingredient_count = 4,
			animation =
			{
				layers =
				{
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-base.png",
						priority = "high",
						width = 164,
						height = 189,
						shift = util.by_pixel(0, -14),
					},
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-shadow.png",
						priority = "high",
						width = 224,
						height = 124,
						shift = util.by_pixel(30, 20),
						draw_as_shadow = true,
					}
				}
			},
			working_visualisations =
			{
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-fire.png",
						priority = "high",
						width = 12,
						height = 25,
						line_length = 8,
						frame_count = 48,
						animation_speed = 0.5,
						shift = util.by_pixel(4, 29),
						draw_as_glow = true,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-glow.png",
						priority = "high",
						width = 60,
						height = 43,
						blend_mode = "additive",
						shift = util.by_pixel(5, 39),
						draw_as_glow = true,
						scale = 0.75,
					}
				},
				{
					fadeout = true,
					north_position = {0, 0},
					east_position = {0, 0},
					south_position = {0, 0},
					west_position = {0, 0},
					effect = "flicker",
					animation =
					{
						filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace-working-light.png",
						priority = "high",
						width = 164,
						height = 189,
						blend_mode = "additive",
						shift = util.by_pixel(0, -14),
						draw_as_glow = true,
					}
				}
			},
			vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound =
			{
				sound = { filename = "__base__/sound/oil-refinery.ogg" },
				idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
				apparent_volume = 2.5,
			},
			fluid_boxes =
			{
				off_when_no_fluid_recipe = true,
				{
					production_type = "input",
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = -1,
					pipe_connections = {{ type="input", position = {0, 3} }}
				},
				{
					production_type = "output",
					pipe_covers = pipecoverspictures(),
					base_level = 1,
					pipe_connections = {{ position = {0, -3} }}
				}
			},
		},
	})
end
