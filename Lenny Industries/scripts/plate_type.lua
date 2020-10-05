plate_tier_1 = "copper-plate"
plate_tier_2 = "iron-plate"
plate_tier_3 = "steel-plate"
plate_tier_4 = "steel-plate"

circuit_tier_1 = "electronic-circuit"
circuit_tier_2 = "advanced-circuit"
circuit_tier_3 = "processing-unit"
circuit_tier_4 = "processing-unit"

if mods["bobplates"] then
	plate_tier_1 = "iron-plate"
	plate_tier_2 = "steel-plate"
	plate_tier_3 = "aluminium-plate"
	plate_tier_4 = "titanium-plate"
end

if mods["bobelectronics"] then
	circuit_tier_1 = "basic-circuit-board"
	circuit_tier_2 = "electronic-circuit"
	circuit_tier_3 = "advanced-circuit"
	circuit_tier_4 = "processing-unit"
end
