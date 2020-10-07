if settings.startup["SuperTank_Status"].value then
	data:extend({
		{
			type = "item-with-entity-data",
			name = "supertank",
			icons =
			{
				{
					icon = "__base__/graphics/icons/tank.png"
				},
				{
					icon = "__Lenny_Industries__/graphics/SMedium.png"
				}
			},
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "transport",
			order = "b[personal-transport]-c[supertank]",
			place_result = "supertank",
			stack_size = 1
		}
	})
end
