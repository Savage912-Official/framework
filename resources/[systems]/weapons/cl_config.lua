Config = {
	Animations = {
		["1h"] = {
			Holster = {
				Dict = "weapons@holster_1h",
				Name = "holster",
				Flag = 48,
				BlendSpeed = 8.0,
				Rate = 0.0,
				IgnoreCancel = true,
			},
			Unholster = {
				Dict = "weapons@holster_1h",
				Name = "unholster",
				Flag = 48,
				BlendSpeed = 8.0,
				Rate = 0.0,
				IgnoreCancel = true,
			},
		},
		["2h"] = {
			Holster = {
				Dict = "anim@heists@money_grab@duffel",
				Name = "exit",
				Flag = 48,
				BlendIn = 8.0,
				BlendOut = 2.0,
				Rate = 0.3,
				Duration = 500,
				IgnoreCancel = true,
				
			},
			Unholster = {
				Dict = "anim@heists@money_grab@duffel",
				Name = "enter",
				Flag = 48,
				BlendIn = 8.0,
				BlendOut = 2.0,
				Rate = 0.0,
				Duration = 1200,
				IgnoreCancel = true,
			},
		},
	},
	Reloading = {
		Anim = {
			Dict = "anim@amb@range@load_clips@",
			Name = "idle_02_amy_skater_01",
			Flag = 48,
			BlendSpeed = 6.0,
			Duration = 3000,
		}
	},
	Previews = {
		["lback"] = {
			Bone = 0x60F0,
			Offset = vector3(0.0, -0.18, -0.1),
			Rotation = vector3(0.0, -30.0, 180.0),
			Stack = vector3(0.0, -0.03, 0.0),
			Random = {
				Min = vector3(-4.0, 0.0, -2.0),
				Max = vector3(4.0, 5.0, 2.0),
			},
		},
		["back"] = {
			Bone = 0x60F1,
			Offset = vector3(0.0, -0.14, 0.05),
			Rotation = vector3(0.0, 15.0, 0.0),
			Stack = vector3(0.0, -0.03, 0.0),
			Random = {
				Min = vector3(-6.0, 0.0, -2.0),
				Max = vector3(6.0, 35.0, 2.0),
			},
		},
		["chest"] = {
			Bone = 0x60F0,
			Offset = vector3(0.0, 0.175, 0.0),
			Rotation = vector3(180.0, 235.0, 0.0),
			Stack = vector3(0.0, 0.025, 0.0),
			Random = {
				Min = vector3(0.0, -22.5, 0.0),
				Max = vector3(0.0, 0.0, 0.0),
			},
		},
		["hip1"] = {
			Bone = 0x60F1,
			Offset = vector3(0.0, 0.04, 0.18),
			Rotation = vector3(-90.0, 0.0, 200.0),
			Stack = vector3(0.0, 0.0, 0.025),
		},
		["hip2"] = {
			Bone = 0x60F2,
			Offset = vector3(0.0, 0.15, 0.18),
			Rotation = vector3(-90.0, 0.0, 130.0),
			Stack = vector3(0.0, 0.0, 0.025),
		},
	},
	Loading = {
		Duration = 9000,
		Anim = {
			Sequence = {
				{
					Duration = 6000,
					Dict = "anim@amb@range@load_clips@",
					Name = "idle_01_amy_skater_01",
					Flag = 48,
					Secondary = {
						Dict = "anim@amb@business@weed@weed_inspecting_lo_med_hi@",
						Name = "weed_stand_checkingleaves_kneeling_02_inspector",
						Flag = 0,
						Rate = 0.05,
					}
				},
				{
					Duration = 3000,
					Dict = "amb@medic@standing@kneel@exit",
					Name = "exit",
					Flag = 0,
				},
			}
		},
	},
	Reloads = {
		[`WEAPON_STUNGUN`] = { Dict = "anim@weapons@first_person@aim_rng@generic@pistol@machine_pistol@str", Name = "reload_aim", Flag = 48 },
	},
}