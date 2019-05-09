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
				icon = "__angelspetrochem__/graphics/icons/num_1.png",
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
				icon = "__angelspetrochem__/graphics/icons/num_1.png",
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
			filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
			width = 224,
			height = 224,
			line_length = 5,
			frame_count = 25,
			shift = {0, 0},
			animation_speed = 0.75
		},
		working_visualisations =
		{
			{
				animation =
				{
					filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
					line_length = 10,
					width = 20,
					height = 40,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 1,
					shift = {-2.05, -2.3},
					hr_version =
					{
						filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 1,
						shift = {-2.05, -2.3},
					},
				},
				light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
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
				icon = "__angelspetrochem__/graphics/icons/num_2.png",
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
				icon = "__angelspetrochem__/graphics/icons/num_2.png",
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
			filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
			width = 224,
			height = 224,
			line_length = 5,
			frame_count = 25,
			shift = {0, 0},
			animation_speed = 0.75
		},
		working_visualisations =
		{
			{
				animation =
				{
					filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
					line_length = 10,
					width = 20,
					height = 40,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 1,
					shift = {-2.05, -2.3},
					hr_version =
					{
						filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 1,
						shift = {-2.05, -2.3},
					},
				},
				light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
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
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
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
				icon = "__angelspetrochem__/graphics/icons/num_3.png",
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
			filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
			width = 224,
			height = 224,
			line_length = 5,
			frame_count = 25,
			shift = {0, 0},
			animation_speed = 0.75
		},
		working_visualisations =
		{
			{
				animation =
				{
					filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
					line_length = 10,
					width = 20,
					height = 40,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 1,
					shift = {-2.05, -2.3},
					hr_version =
					{
						filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 1,
						shift = {-2.05, -2.3},
					},
				},
				light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
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
				icon = "__angelspetrochem__/graphics/icons/num_4.png",
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
				icon = "__angelspetrochem__/graphics/icons/num_4.png",
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
			filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
			width = 224,
			height = 224,
			line_length = 5,
			frame_count = 25,
			shift = {0, 0},
			animation_speed = 0.75
		},
		working_visualisations =
		{
			{
				animation =
				{
					filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
					line_length = 10,
					width = 20,
					height = 40,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 1,
					shift = {-2.05, -2.3},
					hr_version =
					{
						filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 1,
						shift = {-2.05, -2.3},
					},
				},
				light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
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
