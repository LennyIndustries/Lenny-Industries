data:extend({
	{
		type = "item",
		name = "supertank",
		icon = "__Lenny_Industries__/graphics/supertank.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "b[personal-transport]-c[supertank]",
		place_result = "supertank",
		stack_size = 1
	},

	{
		type = "ammo",
		name = "super-explosive-cannon-shell",
		icon = "__Lenny_Industries__/graphics/super-explosive-cannon-shell.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		ammo_type =
		{
			category = "cannon-shell",
			target_type = "direction",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "super-explosive-cannon-projectile",
					starting_speed = 1,
					direction_deviation = 0.001,
					range_deviation = 0.001,
					max_range = 40,
					min_range = 7.5,
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
				}
			},
		},
		magazine_size = 5 * settings.startup["SuperTank_Ammo"].value,
		subgroup = "ammo",
		order = "d[cannon-shell]-c",
		stack_size = 100 * settings.startup["SuperTank_Ammo"].value
	},

	{
		type = "projectile",
		name = "super-explosive-cannon-projectile",
		flags = {"not-on-map"},
		collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
		acceleration = 0,
		direction_only = true,
		piercing_damage = 2000 * settings.startup["SuperTank_Ammo"].value,
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
						damage = { amount = 2500 * settings.startup["SuperTank_Ammo"].value, type = "physical"}
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
							perimeter = 25 * settings.startup["SuperTank_Ammo"].value,
							radius = 25 * settings.startup["SuperTank_Ammo"].value,
							action_delivery =
							{
								type = "instant",
								target_effects =
								{
									{
									type = "damage",
									damage = {amount = 5000 * settings.startup["SuperTank_Ammo"].value, type = "explosion"}
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
		type = "ammo",
		name = "super-piercing-bullet-magazine",
		icon = "__Lenny_Industries__/graphics/super-piercing-bullet-magazine.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
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
							damage = { amount = 150 * settings.startup["SuperTank_Ammo"].value , type = "physical"}
						}
					}
				}
			}
		},
		magazine_size = 25 * settings.startup["SuperTank_Ammo"].value,
		subgroup = "ammo",
		order = "a[basic-clips]-c",
		stack_size = 100
	},
})
