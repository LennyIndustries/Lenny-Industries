if settings.startup["LocomotiveTurret_Status"].value then
	data:extend({
		{
			type = "recipe",
			name = "locomotive-turret",
			enabled = true,
			energy_required = 4,
			ingredients =
			{
				{"advanced-circuit", 15},
				{"steel-plate", 10},
				{"battery", 5}
			},
			result = "locomotive-turret"
		},
	})
end
