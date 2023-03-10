Config.Filters.Carpart = {
	item = {
        ["Food Delivery Box"] = true,
		["Body Repair Kit"] = true,
        ["Repair Kit"] = true,
        ["Paint Can"] = true,
        ["Car Jack"] = true,
        ["Mod Kit"] = true,
        ["Wheel"] = true,
        ["Tire"] = true,
        ["Shocks"] = true,
        ["Brakes"] = true,
        ["Car Battery"] = true,
        ["Axle"] = true,
        ["Fuel Tank"] = true,
        ["Radiator"] = true,
        ["Alternator"] = true,
        ["Transmission"] = true,
        ["Muffler"] = true,
        ["Fuel Injector"] = true,
	},
}

RegisterShop("CPART_1", {
    Name = "Car Parts",
    Factions = {
		["axles"] = "mechanic",
		["cameltow"] = "mechanic",
		["misfits"] = "mechanic",
		["powerautos"] = "mechanic",
        ["route68"] = "mechanic",
        ["bikeshop"] = "mechanic",
        ["docksidemech"] = "mechanic",
	},
    Clerks = {
        {
            coords = vector4(858.1359, -3203.044, 5.994996, 210.5611),
            model = "s_m_m_autoshop_01",
        },
    },
    Storage = {
        Coords = vector3(858.1359, -3203.044, 5.994996),
        Radius = 2.0,
        Filters = Config.Filters.Carpart,
    },
})
