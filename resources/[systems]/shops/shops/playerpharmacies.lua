Config.Filters.Playpharm = {
	blip = {
		name = "Pharmacy",
		id = 51,
		scale = 0.5,
		color = 29,
	},
	item = {
		["Gauze"] = true,
		["Bandage"] = true,
        ["Acetic Anhydride"] = true,
        ["Ammonium Chloride"] = true,
        ["Bleach"] = true,
        ["Calcium Oxide"] = true,
        ["Calcium Powder"] = true,
        ["Caustic Soda"] = true,
        ["Codeine"] = true,
        ["Hydrochloric Acid"] = true,
        ["Iodine"] = true,
        ["Hydrogen Peroxide"] = true,
        ["Sodium Carbonate"] = true,
        ["Syringe"] = true,
		["Scissors"] = true,
	},
}

RegisterShop("VESPUCCI_PPH01", {
	Name = "Vespucci Pharmacy",
	Clerks = {
		{
			coords = vector4(-492.1134, -342.5998, 42.32042, 350.0087),
			model = "s_m_m_doctor_01",
		},
	},
	Storage = {
		Coords = vector3(-490.9868, -342.9051, 42.3208),
		Radius = 2.0,
		Filters = Config.Filters.Playpharm,
	},
	}
)

RegisterShop("PALETO_PPH02", {
	Name = "Vespucci Pharmacy",
	Clerks = {
		{
			coords = vector4(-172.9113, 6381.258, 31.47294, 222.8688),
			model = "s_m_m_doctor_01",
		},
	},
	Storage = {
		Coords = vector3(-172.9113, 6381.258, 31.47294),
		Radius = 2.0,
		Filters = Config.Filters.Playpharm,
	},
	}
)