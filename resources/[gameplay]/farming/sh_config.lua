-- https://d0p3t.nl/enums/materialhash.html
Config = {
	Actions = {
		Collecting = {
			Anim = {
				Dict = "anim@mp_snowball",
				Name = "pickup_snowball",
				Flag = 0,
				DisableMovement = true,
			},
			Label = "Collecting...",
			Duration = 1200,
			UseWhileDead = false,
			CanCancel = true,
			Disarm = false,
		},
		Picking = {
			Anim = {
				Dict = "anim@mp_snowball",
				Name = "pickup_snowball",
				Duration = 2000,
				Flag = 0,
				DisableMovement = true,
			},
			Label = "Picking Leaves...",
			Duration = 2000,
			UseWhileDead = false,
			CanCancel = true,
			Disarm = false,
		},
	},
	Zones = {
		-- Vineyard.
		-- Apple trees.
		{
			Center = vector3(-1825.9455566406, 1985.0401611328, 128.91809082031),
			Radius = 40,
			Material = -1915425863,
			Action = "Collecting",
			CooldownRadius = 8.0,
			CooldownTime = 30.0,
			Items = { { "Apple", {1,2} } },
		},
		-- Grapes.
		{
			Center = vector3(-1818.6496582031, 2060.240234375, 158.60290527344),
			Radius = 350,
			Material = 1441114862,
			Action = "Collecting",
			CooldownRadius = 40.0,
			CooldownTime = 30.0,
			Items = { { "Grapes", {1,2} } },
		},
		-- Paleto.
		{
			Center = vector3(354.05700683594, 6525.1572265625, 35.180233001709),
			Radius = 40,
			Material = -1915425863,
			Action = "Collecting",
			CooldownRadius = 8.0,
			CooldownTime = 30.0,
			Items = { { "Apple", {1,2} } },
		},
		{
			Center = vector3(255.62858581543, 6500.26171875, 36.855079650879),
			Radius = 35,
			Material = -1915425863,
			Action = "Collecting",
			CooldownRadius = 8.0,
			CooldownTime = 30.0,
			Items = { { "Apple", {1,2} } },
		},
		{
			Center = vector3(209.33895874023, 6505.8520507813, 51.103126525879),
			Radius = 35,
			Material = -1915425863,
			Action = "Collecting",
			CooldownRadius = 8.0,
			CooldownTime = 30.0,
			Items = { { "Apple", {1,2} } },
		},
		{
			Center = vector3(344.22583007813, 6470.5654296875, 30.780435562134),
			Radius = 30,
			Material = -2041329971,
			Action = "Collecting",
			CooldownRadius = 6.0,
			CooldownTime = 30.0,
			Items = { { "Tomato", {1,2} } },
		},
		-- Cayo Perrico.
		{
			Center = vector3(5309.69921875, -5292.81640625, 34.17769241333008),
			Radius = 24,
			Material = 581794674,
			Action = "Picking",
			CooldownRadius = 3.0,
			CooldownTime = 100.0,
			Items = { { "Coca Leaves", {1,2} } },
		},
		{
			Center = vector3(5290.935546875, -5241.55419921875, 31.62150764465332),
			Radius = 20,
			Material = 581794674,
			Action = "Picking",
			CooldownRadius = 3.0,
			CooldownTime = 100.0,
			Items = { { "Coca Leaves", {1,2} } },
		},
		{
			Center = vector3(5313.208984375, -5211.64990234375, 32.12123870849609),
			Radius = 30,
			Material = 581794674,
			Action = "Picking",
			CooldownRadius = 3.0,
			CooldownTime = 100.0,
			Items = { { "Coca Leaves", {1,2} } },
		},
		{
			Center =vector3(5350.4306640625, -5173.6005859375, 29.5479679107666),
			Radius = 30,
			Material = 581794674,
			Action = "Picking",
			CooldownRadius = 3.0,
			CooldownTime = 100.0,
			Items = { { "Coca Leaves", {1,2} } },
		},
	},
	UseRange = 2.5,
}