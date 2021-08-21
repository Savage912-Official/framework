Config = {
	Bones = {
		-- Fallbacks.
		[0] = {
			Name = "SKEL_ROOT",
			Fallback = 11816,
		},
		[23553] = {
			Name = "SKEL_Spine0",
			Fallback = 11816,
		},
		[24816] = {
			Name = "SKEL_Spine1",
			Fallback = 11816,
		},
		[39317] = {
			Name = "SKEL_Neck_1",
			Fallback = 31086,
		},
		[57597] = {
			Name = "SKEL_Spine_Root",
			Fallback = 11816,
		},
		-- Bones.
		[10706] = {
			Name = "SKEL_R_Clavicle",
			Nearby = { 40269, 31086, 24818 },
		},
		[11816] = {
			Name = "SKEL_Pelvis",
			Nearby = { 24817, 51826, 58271 },
			Limp = 0.5,
			MaxArmor = 0.1,
		},
		[14201] = {
			Name = "SKEL_L_Foot",
			Nearby = { 63931 },
			Limp = 0.25,
		},
		[18905] = {
			Name = "SKEL_L_Hand",
			Nearby = { 61163 },
		},
		[24817] = {
			Name = "SKEL_Spine2",
			Nearby = { 24818, 24816 },
		},
		[24818] = {
			Name = "SKEL_Spine3",
			Nearby = { 10706, 64729, 24817, 45509, 40269 },
		},
		[28252] = {
			Name = "SKEL_R_Forearm",
			Nearby = { 40269, 57005 },
		},
		[31086] = {
			Name = "SKEL_Head",
			Nearby = { 10706, 64729 },
			Concussion = true,
			MaxArmor = 0.1,
		},
		[36864] = {
			Name = "SKEL_R_Calf",
			Nearby = { 51826, 52301 },
			Limp = 0.5,
		},
		[40269] = {
			Name = "SKEL_R_UpperArm",
			Nearby = { 10706, 28252, 24818 },
			MaxArmor = 0.1,
		},
		[45509] = {
			Name = "SKEL_L_UpperArm",
			Nearby = { 64729, 61163, 24818 },
			MaxArmor = 0.1,
		},
		[51826] = {
			Name = "SKEL_R_Thigh",
			Nearby = { 11816, 36864 },
			Limp = 0.5,
		},
		[52301] = {
			Name = "SKEL_R_Foot",
			Nearby = { 36864 },
			Limp = 0.25,
		},
		[57005] = {
			Name = "SKEL_R_Hand",
			Nearby = { 28252 },
		},
		[58271] = {
			Name = "SKEL_L_Thigh",
			Nearby = { 11816, 63931 },
			Limp = 0.5,
		},
		[61163] = {
			Name = "SKEL_L_Forearm",
			Nearby = { 45509, 18905 },
		},
		[63931] = {
			Name = "SKEL_L_Calf",
			Nearby = { 58271, 14201 },
			Limp = 0.5,
		},
		[64729] = {
			Name = "SKEL_L_Clavicle",
			Nearby = { 45509, 31086, 24818 },
		},
	},
	Controls = {
		Die = 22,
	},
	Anims = {
		Writhes = {
			{ Dict = "combat@damage@writheidle_a", Name = "writhe_idle_a", Flag = 1 },
			{ Dict = "combat@damage@writheidle_a", Name = "writhe_idle_b", Flag = 1 },
			{ Dict = "combat@damage@writheidle_a", Name = "writhe_idle_c", Flag = 1 },
			{ Dict = "combat@damage@writheidle_b", Name = "writhe_idle_d", Flag = 1 },
			{ Dict = "combat@damage@writheidle_b", Name = "writhe_idle_e", Flag = 1 },
			{ Dict = "combat@damage@writheidle_b", Name = "writhe_idle_f", Flag = 1 },
			{ Dict = "combat@damage@writheidle_c", Name = "writhe_idle_g", Flag = 1 },
		},
		Deaths = {
			{ Dict = "combat@death@from_writhe", Name = "death_a", Flag = 2 },
			{ Dict = "combat@death@from_writhe", Name = "death_b", Flag = 2 },
			{ Dict = "combat@death@from_writhe", Name = "death_c", Flag = 2 },
		},
		Revive = { Dict = "get_up@directional@movement@from_seated@action", Name = "getup_r_0", Flag = 0, Duration = 1600 },
	},
	Down = {
		Delay = 1000,
		MaxSpeed = 0.1,
		FadeTime = 1000,
		BlendSpeed = 2.0,
		Anim = {
			dict = "Dead",
			name = "dead_%s",
			random = { "a", "b", "c", "d", "e", "f", "g", "h" },
		},
		Water = {
			Anim = {
				dict = "dam_ko",
				name = "drown",
			},
			Buoyancy = 1.2,
		},
		Vehicles = {
			Anim = {
				-- dict = "veh@std@ps@idle_duck", -- Floating hands
				dict = "veh@std@rps@idle_duck", -- Tucked hands
				name = "sit",
				flag = 16,
			},
		},
	},
}