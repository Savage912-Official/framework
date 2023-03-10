Config.Filters.Prisonarm = {
	item = {
		["Radio"] = true,
		["Body Armor"] = true,
		["Stun Gun"] = true,
        ["Gunshot Residue Kit"] = true,
        ["Taser Cartridge"] = true,
        ["Taser Prong"] = true,
		["Evidence Bag"] = true,
        ["Bean Bag Shotgun"] = true,
        ["Bean Bag"] = true,
		["Bean Bag Round"] = true,
		["9mm Parabellum"] = true,
        ["Flashlight"] = true,
        ["Handcuffs"] = true,
        --["Heavy Armor"] = true,
        --["Ballistic Helmet"] = true,
        ["Pistol Mk II"] = true,
		["SNS Pistol Mk II"] = true,
		[".45 ACP Box"] = true,
		[".45 ACP"] = true,
        ["9mm Parabellum Box"] = true,
        ["9mm Magazine"] = true,
		[".45 Magazine"] = true,
		["Gauze"] = true,
		["Nightstick"] = true,
		["Tweezers"] = true,
		["Handcuff Keys"] = true,
		["Binoculars"] = true,
		["Bandage"] = true,
        ["Saline"] = true,
        ["Ice Pack"] = true,
        ["Splint"] = true,
        ["Cervical Collar"] = true,
        ["Tourniquet"] = true,
        ["Fire Blanket"] = true,
		["Scissors"] = true,
		["AED"] = true,
	},
}

RegisterShop("PRISON_ARM_001", {
	Name = "Prison Armory",
	License = "weapons",
	Clerks = {
		{
			coords = vector4(1782.275, 2543.349, 45.80243, 272.722),
			model = "s_m_y_cop_01",
		},
	},
	Storage = {
		Coords = vector3(1782.275, 2543.349, 45.80243),
		Radius = 2.0,
		Filters = Config.Filters.Prisonarm,
	},
})