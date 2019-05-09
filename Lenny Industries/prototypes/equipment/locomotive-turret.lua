data:extend({
	{
		type = "active-defense-equipment",
		name = "locomotive-turret",
		sprite =
		{
			filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "10MJ"
		},
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "bullet",
			cooldown = 5,
			movement_slow_down_factor = 0.2,
			shell_particle =
			{
				name = "shell-particle",
				direction_deviation = 0.1,
				speed = 0.1,
				speed_deviation = 0.03,
				center = {0, 0.1},
				creation_distance = -0.5,
				starting_frame_speed = 0.4,
				starting_frame_speed_deviation = 0.1
			},
			projectile_creation_distance = 1.125,
			range = 50,
			ammo_type =
			{
				category = "bullet",
				energy_consumption = "2.5MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							source_effects =
							{
								type = "create-explosion",
								entity_name = "explosion-gunshot"
							},
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								},
								{
									type = "damage",
									damage = { amount = 100 * settings.startup["SuperTank_Ammo"].value , type = "physical"}
								},
								{
									type = "damage",
									damage = { amount = 75 * settings.startup["SuperTank_Ammo"].value , type = "impact"}
								}
							}
						},
						{
							type = "beam",
							beam = "bob-laser-beam-diamond",
							max_length = 25,
							duration = 20,
							source_offset = {0, -1.31439 }
						},
					}
				}
			},
			sound = make_light_gunshot_sounds()
		},

		automatic = true,
		categories = {"locomotive"}
	},
})
