if settings.startup["LocomotiveTurret_Status"].value then
	if not mods["bobvehicleequipment"] then
		data:extend({
			{
				type = "equipment-category",
				name = "locomotive"
			}
		})
	end
	data:extend({
		{
			type = "active-defense-equipment",
			name = "locomotive-turret",
			categories = {"locomotive"},
			sprite =
			{
				filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
				width = 64,
				height = 64,
				priority = "medium"
			},
			shape =
			{
				width = 1,
				height = 1,
				type = "full"
			},
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				buffer_capacity = "1MJ",
			},
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 1,
				movement_slow_down_factor = 0.0,
				projectile_creation_distance = 1.125,
				range = 50,
				ammo_type =
				{
					category = "bullet",
					energy_consumption = "2500J",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "beam",
							beam = "super-beam",
							max_length = 50,
							duration = 20,
							source_offset = {0, -1.31439 }
						}
					}
				},
				sound =
				{
					{
						filename = "__base__/sound/fight/laser-1.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-2.ogg",
						volume = 1.0
					},
					{
						filename = "__base__/sound/fight/laser-3.ogg",
						volume = 1.0
					}
				},
			},
			automatic = true,
		}
	})
end
