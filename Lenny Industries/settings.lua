data:extend({
	{
		type = "bool-setting",
		name = "ArcFurnace_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "aa",
	},
	{
		type = "bool-setting",
		name = "Electronics_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ab",
	},
	{
		type = "bool-setting",
		name = "Pipe_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ac",
	},
	{
		type = "bool-setting",
		name = "LRobot_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ad",
	},
	{
		type = "bool-setting",
		name = "CRobot_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ae",
	},
	{
		type = "bool-setting",
		name = "OPBeacon_Status",
		setting_type = "startup",
		default_value = false,
		per_user = false,
		order = "af",
	},
	{
		type = "bool-setting",
		name = "VehicleGrid_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ag",
	},
	{
		type = "int-setting",
		name = "VehicleGrid_Width",
		setting_type = "startup",
		default_value = 21,
		minimum_value = 1,
		maximum_value = 50,
		per_user = false,
		order = "ah",
	},
	{
		type = "int-setting",
		name = "VehicleGrid_Height",
		setting_type = "startup",
		default_value = 21,
		minimum_value = 1,
		maximum_value = 50,
		per_user = false,
		order = "ai",
	},
	{
		type = "bool-setting",
		name = "BobPower_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "aj",
	},
	{
		type = "bool-setting",
		name = "BetterInserters_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "ak",
	},
	{
		type = "bool-setting",
		name = "SuperTank_Status",
		setting_type = "startup",
		default_value = true,
		per_user = false,
		order = "al",
	},
	{
		type = "int-setting",
		name = "SuperTank_Life",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "am",
	},
--[[	{
		type = "int-setting",
		name = "SuperTank_Mecha",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "an",
	},]]--
	{
		type = "int-setting",
		name = "SuperTank_Ammo",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "ao",
	},
	--[[{
		type = "bool-setting",
		name = "SuperTank_Explosion_Immune",
		setting_type = "startup",
		default_value = false,
		per_user = false,
		order = "ap",
	},]]--
})
