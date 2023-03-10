Config.Filters.Meat = {
	blip = {
		name = "Meat Shop",
		id = 442,
		scale = 0.5,
		color = 29,
	},
	item = {
		["Raw Chicken"] = true,
		["Chicken Feather"] = true,
		["Raw Beef"] = true,
		["Raw Venison"] = true,
        ["Raw Pork"] = true,
		["Small Bones"] = true,
		["Large Bones"] = true,
	},
}

RegisterShop("MEAT_SALES", {
	Name = "Meat Shop",
	Clerks = {
		{
			coords = vector4(972.5864, -2120.796, 30.49639, 221.7787),
			model = "s_m_y_factory_01",
		},
	},
	Storage = {
		Coords = vector3(972.1239, -2122.199, 30.49181),
		Radius = 2.0,
		Filters = Config.Filters.Meat,
	},
    Decorations = {
		["meat1"] = {
			item = "Meat Sales",
			invisible = true,
			coords = vector3(975.9515, -2120.334, 30.90044),
			rotation = vector3(-26.61568, 1.067217e-07, -93.64612),
		},
		},
	}
)

