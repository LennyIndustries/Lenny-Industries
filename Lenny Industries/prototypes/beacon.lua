data:extend({
	{
		type = "item",
		name = "op_beacon_1",
		icon = "__base__/graphics/icons/beacon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "module-beacon",
		order = "a[beacon]-3",
		place_result = "op_beacon_1",
		stack_size = 10
	},

	{
		type = "item",
		name = "op_beacon_2",
		icon = "__base__/graphics/icons/beacon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "module-beacon",
		order = "a[beacon]-3",
		place_result = "op_beacon_2",
		stack_size = 10
	},

	{
		type = "beacon",
		name = "op_beacon_1",
		icon = "__base__/graphics/icons/beacon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "op_beacon_1"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		allowed_effects = {"productivity", "consumption", "speed", "pollution"},
		base_picture =
		{
			filename = "__base__/graphics/entity/beacon/beacon-base.png",
			width = 116,
			height = 93,
			shift = { 0.34, 0.06}
		},
		animation =
		{
			filename = "__base__/graphics/entity/beacon/beacon-antenna.png",
			width = 54,
			height = 50,
			line_length = 8,
			frame_count = 32,
			shift = { -0.03, -1.72},
			animation_speed = 0.5
		},
		animation_shadow =
		{
			filename = "__base__/graphics/entity/beacon/beacon-antenna-shadow.png",
			width = 63,
			height = 49,
			line_length = 8,
			frame_count = 32,
			shift = { 3.12, 0.5},
			animation_speed = 0.5
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
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "op_beacon_2"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		allowed_effects = {"productivity", "consumption", "speed", "pollution"},
		base_picture =
		{
			filename = "__base__/graphics/entity/beacon/beacon-base.png",
			width = 116,
			height = 93,
			shift = { 0.34, 0.06}
		},
		animation =
		{
			filename = "__base__/graphics/entity/beacon/beacon-antenna.png",
			width = 54,
			height = 50,
			line_length = 8,
			frame_count = 32,
			shift = { -0.03, -1.72},
			animation_speed = 0.5
		},
		animation_shadow =
		{
			filename = "__base__/graphics/entity/beacon/beacon-antenna-shadow.png",
			width = 63,
			height = 49,
			line_length = 8,
			frame_count = 32,
			shift = { 3.12, 0.5},
			animation_speed = 0.5
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
