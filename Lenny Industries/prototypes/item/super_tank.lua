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
					direction_deviation = 0.1,
					range_deviation = 0.1,
					max_range = 30 + 10 * (supertank_ammo_factor-1),
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
				}
			},
		},
		subgroup = "ammo",
		order = "d[cannon-shell]-c",
		stack_size = 100 + (supertank_ammo_factor-1)*10
	},

	{
		type = "projectile",
		name = "super-explosive-cannon-projectile",
		flags = {"not-on-map"},
		collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
		acceleration = 0,
		direction_only = true,
		piercing_damage = 30 + 150 * (supertank_ammo_factor-1),
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
						damage = { amount = 30 + (supertank_ammo_factor-1) * 150, type = "physical"}
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
							perimeter = 4 + 1.5 * (supertank_ammo_factor-1),
							radius = 4 + 1.5 * (supertank_ammo_factor-1),
							action_delivery =
							{
								type = "instant",
								target_effects =
								{
									{
									type = "damage",
									damage = {amount = 80 + 250 * (supertank_ammo_factor-1), type = "explosion"}
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
							damage = { amount = 5 + (supertank_ammo_factor-1) * 10 , type = "physical"}
						}
					}
				}
			}
		},
		magazine_size = 10 + (supertank_ammo_factor-1) * 10,
		subgroup = "ammo",
		order = "a[basic-clips]-c",
		stack_size = 100 + (supertank_ammo_factor-1)*10
	},
})
