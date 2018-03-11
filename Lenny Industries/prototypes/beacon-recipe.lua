data:extend({
	{
		type = "recipe",
		name = "op_beacon_1",
		enabled = false,
		energy_required = 60,
		ingredients =
		{
			{"beacon", 4},
			{"electronic-circuit", 40},
			{"advanced-circuit", 20},
			{"processing-unit", 20},
			{"steel-plate", 50},
			{"copper-cable", 100},
		},
		result = "op_beacon_1"
	},

	{
		type = "recipe",
		name = "op_beacon_2",
		enabled = false,
		energy_required = 60,
		ingredients =
		{
			{"op_beacon_1", 2},
			{"electronic-circuit", 40},
			{"advanced-circuit", 40},
			{"processing-unit", 40},
			{"steel-plate", 50},
			{"copper-cable", 100},
		},
		result = "op_beacon_2"
	},
})
