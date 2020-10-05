if mods["ShinyAngelGFX"] and mods["angelssmelting"] and settings.startup["ArcFurnaceGFX_Status"].value and settings.startup["ArcFurnace_Status"].value then
	for i = 1, 4 do
		data.raw["assembling-machine"]["arc-furnace_"..i].animation =
		{
			layers =
			{
				{
					filename = "__angelssmelting__/graphics/entity/blast-furnace/blast-furnace.png",
					width = 224,
					height = 224,
					line_length = 5,
					frame_count = 25,
					shift = {0, 0},
					animation_speed = 0.75
				},
				{
					filename = "__ShinyAngelGFX__/graphics/entity/blast-furnace/blast-furnace-"..i..".png",
					width = 224,
					height = 224,
					line_length = 5,
					frame_count = 25,
					shift = {0, 0},
					animation_speed = 0.75
				}
			}
		}
		data.raw["assembling-machine"]["arc-furnace_"..i].fluid_boxes =
		{
			off_when_no_fluid_recipe = true,
			{
				production_type = "input",
				pipe_covers = pipecoverspictures2(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 3} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures2(),
				base_level = 1,
				pipe_connections = {{ position = {0, -3} }}
			}
		}
		data.raw["item"]["arc-furnace_"..i].icons =
		{
			{
				icon = "__ShinyAngelGFX__/graphics/icons/blast-furnace-"..i..".png",
			},
			{
				icon = "__ShinyAngelGFX__/graphics/icons/num-"..i..".png",
			},
			{
				icon = "__Lenny_Industries__/graphics/lightning-bolt.png"
			}
		}
	end
end
