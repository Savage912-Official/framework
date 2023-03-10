Config.Filters.Resource = {
	blip = {
		name = "Resource Shop",
		id = 618,
		scale = 0.5,
		color = 29,
	},
	item = {
		-- Food.
		["Iron Ingot"] = true,
		["Copper Ingot"] = true,
		["Steel Ingot"] = true,
		["Wood"] = true,
		["Wood Branch"] = true,
		["Wood Log"] = true,
		["Treated Wood"] = true,
		["Sulfur"] = true,
	},
}

RegisterShop("RESOURCE_0001", {
	Name = "Resource Shop",
	Clerks = {
		{
			coords = vector4(48.68785, -2676.06, 6.004161, 270.6614),
			model = "cs_floyd",
		},
	},
	Storage = {
		Coords = vector3(45.68102, -2673.021, 6.009615),
		Radius = 2.0,
		Filters = Config.Filters.Resource,
	},
    Decorations = {
		["sales1"] = {
			item = "Resource Sales",
			invisible = true,
			coords = vector3(47.86516, -2677.576, 6.004142),
			heading = 123.7745,
		},
		["sales2"] = {
			item = "Resource Sales",
			invisible = true,
			coords = vector3(11.5801, -2680.863, 6.009491),
			rotation = vector3(-12.79698, -6.670106e-09, 89.62646),
		},
        ["smelter1"] = {
			item = "Smeltry",
			invisible = true,
			coords = vector3(1110.29, -2008.308, 31.62196),
			rotation = vector3(-20.1329, -8.537736e-07, 140.9155),			
		},
		["grinder1"] = {
			item = "Grindstone",
			invisible = true,
			coords = vector3(1102.428, -2024.045, 44.45947),
			rotation = vector3(-41.0309, -0, -215.5155),			
		},
		},
	}
)

