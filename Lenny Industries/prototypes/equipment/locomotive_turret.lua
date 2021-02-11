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
				usage_priority = "primary-input",
				buffer_capacity = "1MJ",
			},
			attack_parameters =
			{
				type = "beam",
				ammo_category = "electric",
				cooldown = 5,
				source_offset = {0, -3.423489 / 4},
				projectile_creation_distance = 1.125,
				range = 50,
				ammo_type =
				{
					category = "laser",
					energy_consumption = "2500J",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "beam",
							beam = "super-beam",
							max_length = 50,
							duration = 50,
							source_offset = {0, -1.31439 }
						}
					}
				}
			},
			automatic = true,
		}
	})
end
