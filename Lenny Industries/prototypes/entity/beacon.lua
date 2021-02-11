if settings.startup["OPBeacon_Status"].value then
	data:extend({
		{
			type = "item",
			name = "op_beacon_1",
			icon = "__base__/graphics/icons/beacon.png",
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "module",
			order = "a[beacon]-3",
			place_result = "op_beacon_1",
			stack_size = 10
		},

		{
			type = "item",
			name = "op_beacon_2",
			icon = "__base__/graphics/icons/beacon.png",
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "module",
			order = "a[beacon]-4",
			place_result = "op_beacon_2",
			stack_size = 10
		},

		{
			type = "beacon",
			name = "op_beacon_1",
			icon = "__base__/graphics/icons/beacon.png",
			icon_size = 64,
			icon_mipmaps = 4,
			flags = {"placeable-player", "player-creation"},
			minable = {mining_time = 1, result = "op_beacon_1"},
			max_health = 400,
			corpse = "beacon-remnants",
			dying_explosion = "beacon-explosion",
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			graphics_set = require("__base__/prototypes/entity/beacon-animations"),
			allowed_effects = {"productivity", "consumption", "speed", "pollution"},
			working_sound =
			{
				sound =
				{
					{
						filename = "__base__/sound/beacon-1.ogg",
						volume = 0.2
					},
					{
						filename = "__base__/sound/beacon-2.ogg",
						volume = 0.2
					}
				},
				audible_distance_modifier = 0.33,
				max_sounds_per_type = 3
			},
			water_reflection =
			{
				pictures =
				{
					filename = "__base__/graphics/entity/beacon/beacon-reflection.png",
					priority = "extra-high",
					width = 24,
					height = 28,
					shift = util.by_pixel(0, 55),
					variation_count = 1,
					scale = 5
				},
				rotate = false,
				orientation_to_variation = false
			},
			radius_visualisation_picture =
			{
				filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
				width = 10,
				height = 10
			},
			supply_area_distance = 15,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input"
			},
			energy_usage = "1MW",
			distribution_effectivity = 1.25,
			module_specification =
			{
				module_slots = 10,
				module_info_icon_shift = {0, 0.5},
				module_info_multi_row_initial_height_modifier = -0.3
			}
		},

		{
			type = "beacon",
			name = "op_beacon_2",
			icon = "__base__/graphics/icons/beacon.png",
			icon_size = 64,
			icon_mipmaps = 4,
			flags = {"placeable-player", "player-creation"},
			minable = {mining_time = 1, result = "op_beacon_2"},
			max_health = 800,
			corpse = "beacon-remnants",
			dying_explosion = "beacon-explosion",
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			graphics_set = require("__base__/prototypes/entity/beacon-animations"),
			allowed_effects = {"productivity", "consumption", "speed", "pollution"},
			working_sound =
			{
				sound =
				{
					{
						filename = "__base__/sound/beacon-1.ogg",
						volume = 0.2
					},
					{
						filename = "__base__/sound/beacon-2.ogg",
						volume = 0.2
					}
				},
				audible_distance_modifier = 0.33,
				max_sounds_per_type = 3
			},
			water_reflection =
			{
				pictures =
				{
					filename = "__base__/graphics/entity/beacon/beacon-reflection.png",
					priority = "extra-high",
					width = 24,
					height = 28,
					shift = util.by_pixel(0, 55),
					variation_count = 1,
					scale = 5
				},
				rotate = false,
				orientation_to_variation = false
			},
			radius_visualisation_picture =
			{
				filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
				width = 10,
				height = 10
			},
			supply_area_distance = 21,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input"
			},
			energy_usage = "2.5MW",
			distribution_effectivity = 1.5,
			module_specification =
			{
				module_slots = 20,
				module_info_icon_shift = {0, 0.5},
				module_info_multi_row_initial_height_modifier = -0.3
			}
		},
	})
end
