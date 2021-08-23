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
		[31086] = {
			Name = "SKEL_Head",
			Modifier = 1.8,
			Nearby = { 10706, 64729 },
			Concussion = true,
			Armor = 1 << 3,
		},
		[10706] = {
			Name = "SKEL_R_Clavicle",
			Modifier = 0.8,
			Nearby = { 40269, 31086, 24818 },
			Armor = 1 << 1,
		},
		[11816] = {
			Name = "SKEL_Pelvis",
			Modifier = 0.9,
			Nearby = { 24817, 51826, 58271 },
			Limp = 0.5,
			Armor = 1 << 2,
		},
		[14201] = {
			Name = "SKEL_L_Foot",
			Modifier = 0.6,
			Nearby = { 63931 },
			Limp = 0.25,
		},
		[18905] = {
			Name = "SKEL_L_Hand",
			Modifier = 0.6,
			Nearby = { 61163 },
		},
		[24817] = {
			Name = "SKEL_Spine2",
			Modifier = 1.0,
			Nearby = { 24818, 24816 },
			Armor = 1 << 1,
		},
		[24818] = {
			Name = "SKEL_Spine3",
			Modifier = 1.1,
			Nearby = { 10706, 64729, 24817, 45509, 40269 },
			Armor = 1 << 1,
		},
		[28252] = {
			Name = "SKEL_R_Forearm",
			Modifier = 0.7,
			Nearby = { 40269, 57005 },
		},
		[36864] = {
			Name = "SKEL_R_Calf",
			Modifier = 0.7,
			Nearby = { 51826, 52301 },
			Limp = 0.5,
		},
		[40269] = {
			Name = "SKEL_R_UpperArm",
			Modifier = 0.8,
			Nearby = { 10706, 28252, 24818 },
			Armor = 1 << 2,
		},
		[45509] = {
			Name = "SKEL_L_UpperArm",
			Modifier = 0.8,
			Nearby = { 64729, 61163, 24818 },
			Armor = 1 << 2,
		},
		[51826] = {
			Name = "SKEL_R_Thigh",
			Modifier = 0.8,
			Nearby = { 11816, 36864 },
			Limp = 0.5,
		},
		[52301] = {
			Name = "SKEL_R_Foot",
			Modifier = 0.6,
			Nearby = { 36864 },
			Limp = 0.25,
		},
		[57005] = {
			Name = "SKEL_R_Hand",
			Modifier = 0.6,
			Nearby = { 28252 },
		},
		[58271] = {
			Name = "SKEL_L_Thigh",
			Modifier = 0.8,
			Nearby = { 11816, 63931 },
			Limp = 0.5,
		},
		[61163] = {
			Name = "SKEL_L_Forearm",
			Modifier = 0.7,
			Nearby = { 45509, 18905 },
		},
		[63931] = {
			Name = "SKEL_L_Calf",
			Modifier = 0.7,
			Nearby = { 58271, 14201 },
			Limp = 0.5,
		},
		[64729] = {
			Name = "SKEL_L_Clavicle",
			Modifier = 0.8,
			Nearby = { 45509, 31086, 24818 },
			Armor = 1 << 1,
		},
	},
	Effects = {
		{
			Name = "Health",
			Default = 1.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = true,
			High = false,
		},
		{
			Name = "Blood",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "red",
			Low = false,
			High = true,
		},
		{
			Name = "Hunger",
			Default = 1.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = true,
			High = false,
		},
		{
			Name = "Thirst",
			Default = 1.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = true,
			High = false,
		},
		{
			Name = "Stress",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Fatigue",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Fracture",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Rage",
			Default = 0.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Comfort",
			Default = 0.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Speed",
			Default = 0.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Concussion",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Bac",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Drug",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Oxygen",
			Default = 0.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Poison",
			Default = 0.0,
			Invert = true,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
		{
			Name = "Scuba",
			Default = 0.0,
			Invert = false,
			Background = "grey",
			Foreground = "white",
			Low = false,
			High = true,
		},
	},
	Armor = {
		Duration = 8000,
		Anim = {
			Flag = 48,
			Dict = "clothingtie",
			Name = "try_tie_neutral_c",
		}
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
		Sit = { Dict = "rcm_barry3", Name = "barry_3_sit_loop", Flag = 1 },
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