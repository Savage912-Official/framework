RegisterShop("PAWN_1", {
	Name = "Pawn Shop",
	Storage = {
		Coords = vector3(159.5907, -1316.241, 29.36359),
		Radius = 1.0,
	},
	Decorations = {
		["pawnsell_1"] = {
			item = "Pawn Sell",
            radius = 0.1,
			invisible = true,
			coords = vector3(172.5118, -1316.467, 30.29674),
			rotation = vector3(-29.68401, -0, -119.1172),
		},
        ["beproc_1"] = {
			item = "Jewel Bench",
            radius = 0.1,
			invisible = true,
			coords = vector3(156.9648, -1312.651, 30.29742),
			rotation = vector3(-19.21945, -0, 35.82918),
		},
	},
	Containers = {
		{
			text = "Storage",
			radius = 0.4,
			coords = vector3(162.0863, -1312.943, 30.28711),
			discrete = true,
			width = 5,
			height = 15,
		},
        {
			text = "Storage",
			radius = 0.3,
			coords = vector3(161.4098, -1314.313, 30.28711),
			discrete = true,
			width = 5,
			height = 15,
        {
			text = "Storage",
			radius = 0.3,
			coords = vector3(160.4984, -1316.067, 30.28711),
			discrete = true,
			width = 5,
			height = 15,
		},
		{
			text = "Counter",
			radius = 0.5,
			coords = vector3(174.8916, -1322.912, 29.49559),
			discrete = true,
			width = 4,
			height = 3,
        },
		},
	},
})