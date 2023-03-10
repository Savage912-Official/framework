exports.jobs:Register("mightybush", {
	Title = "Dealership",
	Name = "Mighty Bush",
	Faction = "delivery",
	Group = "mightybush",
	IsPublic = true,
	Delivery = {
		Center = vector3(-101.2231674194336, -902.0380859375, 58.2816047668457),
		Properties = {
			Radius = 3000.0,
			Max = 128,
			Types = {
				["mansion"] = true,
			},
		},
		Pay = 32,
	},
	Clocks = {
		{ Coords = vector3(-510.7276611328125, -53.009952545166016, 42.11237716674805), Radius = 3.5 },
		{ Coords = vector3(-1569.5423583984375, -233.11346435546875, 49.577369689941406), Radius = 3.5 },
	},
	Vehicles = {
		{
			Rank = 0,
			In = vector3(-503.0953674316406, -54.133033752441406, 40.17455291748047),
			Model = "bison3",
			PrimaryColor = 4,
			SecondaryColor = 0,
			Coords = {
				vector4(-497.8973083496094, -63.76741409301758, 39.40182876586914, 151.4108123779297),
				vector4(-497.5601806640625, -53.16831207275391, 39.96979522705078, 203.3632965087891),
				vector4(-489.2158203125, -56.45964813232422, 39.99414825439453, 177.61111450195312),
			},
		},
		{
			Rank = 0,
			In = vector3(-1573.4775390625, -241.7628173828125, 49.47135162353516),
			Model = "bison3",
			PrimaryColor = 4,
			SecondaryColor = 0,
			Coords = {
				vector4(-1574.338623046875, -235.42889404296875, 49.46564483642578, 238.4108123779297),
				vector4(-1576.0169677734375, -238.39675903320312, 49.46564102172852, 241.8750152587891),
				vector4(-1577.8326416015625, -241.2969207763672, 49.469383239746094, 231.53512573242188),
				vector4(-1579.3408203125, -244.79083251953128, 49.479766845703125, 237.0561065673828),
			},
		},
	},
	Ranks = {
		{ Name = "Delivery Driver" },
		{
			Name = "Manager",
			Flags = Jobs.Permissions.ALL()
		},
		{
			Name = "Owner",
			Flags = Jobs.Permissions.ALL()
		},
	},
})