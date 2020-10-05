if settings.startup["LocomotiveTurret_Status"].value then
	data:extend({
	  {
	    type = "item",
	    name = "locomotive-turret",
			icons =
			{
				{
					icon = "__base__/graphics/equipment/personal-laser-defense-equipment.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
	    icon_size = 64,
			icon_mipmaps = 4,
	    placed_as_equipment_result = "locomotive-turret",
	    subgroup = "equipment",
	    order = "z",
	    stack_size = 10,
	    default_request_amount = 10
	  }
	})
end
