Config.Filters.Liquor = {
	blip = {
		name = "Liquor Store",
		id = 59,
		scale = 0.5,
		color = 21,
	},
	item = {
		-- Food.
		["Beer"] = true,
		["Vodka"] = true,
		["Whiskey"] = true,
		["Tequila"] = true,
		["Wine"] = true,
	},
}

RegisterShop("MIRROR_LIQUOR", {
	Name = "Liquor Store Mirror Park",
	Clerks = {
		{
			coords = vector4(1134.31, -983.1893, 46.4158, 278.4586),
			model = "ig_djsolmike",
		},
	},
	Storage = {
		Coords = vector3(1130.396, -979.8316, 46.4158),
		Radius = 2.0,
		Filters = Config.Filters.Liquor,
	},
	Containers = {
		{ text = "Counter", radius = 0.2, vector3(1135.053, -983.0796, 46.61724) },
	},
})

RegisterShop("BAYCITY_LIQUOR", {
	Name = "Liquor Store Bay City",
	Clerks = {
		{
			coords = vector4(-1221.419, -907.9382, 12.32636, 33.42069),
			model = "ig_djsolmike",
		},
	},
	Storage = {
		Coords = vector3(-1222.769, -913.0793, 12.32636),
		Radius = 2.0,
		Filters = Config.Filters.Liquor,
	},
	Containers = {
		{ text = "Counter", radius = 0.2, vector3(-1221.789, -907.3898, 12.5332) },
	},
})

RegisterShop("ROCKFORD_LIQUOR", {
	Name = "Liquor Store Rockford",
	Clerks = {
		{
			coords = vector4(-1486.634, -377.6165, 40.16344, 133.5421),
			model = "ig_djsolmike",
		},
	},
	Storage = {
		Coords = vector3(-1481.368, -377.9491, 40.16344),
		Radius = 2.0,
		Filters = Config.Filters.Liquor,
	},
	Containers = {
		{ text = "Counter", radius = 0.2, vector3(-1487.176, -377.9852, 40.34745) },
	},
})

RegisterShop("HARMONY_LIQUOR", {
	Name = "Liquor Store Harmony",
	Clerks = {
		{
			coords = vector4(1165.281, 2710.862, 38.15771, 179.9999),
			model = "ig_djsolmike",
		},
	},
	Storage = {
		Coords = vector3(1169.377, 2714.326, 38.15772),
		Radius = 2.0,
		Filters = Config.Filters.Liquor,
	},
	Containers = {
		{ text = "Counter", radius = 0.2, vector3(1165.297, 2710.166, 38.30848) },
	},
})

RegisterShop("CHUMASH_LIQUOR", {
	Name = "Liquor Store Chumash",
	Clerks = {
		{
			coords = vector4(-2966.385, 391.838, 15.0409, 88.24725),
			model = "ig_djsolmike",
		},
	},
	Storage = {
		Coords = vector3(-2963.116, 387.2511, 15.03537),
		Radius = 2.0,
		Filters = Config.Filters.Liquor,
	},
	Containers = {
		{ text = "Counter", radius = 0.2, vector3(-2967.089, 391.5259, 15.12364) },
	},
})