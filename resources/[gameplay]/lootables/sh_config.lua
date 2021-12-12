Config = {
	GridSize = 1,
	Cooldown = 60.0 * 15.0, -- In seconds.
	Types = {
		["bin_small"] = {
			Anim = { Dict = "amb@prop_human_bum_bin@idle_a", Name = "idle_a", Flag = 1 },
			Radius = 0.7,
			Energy = 0.01,
			QuickTime = {
				goalSize = 0.3,
				speed = 1.1,
				stages = 6,
			},
			Container = {
				name = "Small Bin",
				width = 2,
				height = 4,
				maxWeight = 20.0,
			},
			Loot = {
				{ item = "Ball", chance = 0.05 },
				{ item = "Bandage", chance = 0.05 },
				{ item = "Broken Bottle", chance = 0.05 },
				{ item = "Clutter", chance = 0.05 },
				{ item = "Cotton Swab", chance = 0.05 },
				{ item = "Crack Pipe", chance = 0.05 },
				{ item = "Domi 2", chance = 0.05 },
				{ item = "Ego Chaser", chance = 0.05 },
				{ item = "Flint", chance = 0.05 },
				{ item = "Gauze", chance = 0.05 },
				{ item = "Glass", chance = 0.05, quantity = { 1, 10 } },
				{ item = "Hair Tie", chance = 0.05 },
				{ item = "Hammer", chance = 0.05 },
				{ item = "Hotwire Kit", chance = 0.05 },
				{ item = "Jar", chance = 0.05 },
				{ item = "Joint", chance = 0.05 },
				{ item = "Knuckle Dusters", chance = 0.05 },
				{ item = "Lockpick", chance = 0.05 },
				{ item = "Max 2", chance = 0.05 },
				{ item = "Meteorite Bar", chance = 0.05 },
				{ item = "Nora", chance = 0.05 },
				{ item = "Paper Bag", chance = 0.05 },
				{ item = "Paper", chance = 0.05, quantity = { 1, 10 } },
				{ item = "Pliers", chance = 0.05 },
				{ item = "Rag", chance = 0.05 },
				{ item = "Scratch Off", chance = 0.05 },
				{ item = "Screwdriver", chance = 0.05 },
				{ item = "Screws", chance = 0.05 },
				{ item = "Solo Cup", chance = 0.05 },
				{ item = "Switchblade", chance = 0.05 },
				{ item = "Syringe", chance = 0.05 },
				{ item = "Teddy Bear", chance = 0.05 },
				{ item = "Tenga", chance = 0.05 },
				{ item = "Tweezers", chance = 0.05 },
				
				{ item = "Penny", chance = 0.05, quantity = { 1, 100 } },
				{ item = "Nickel", chance = 0.05, quantity = { 1, 20 } },
				{ item = "Dime", chance = 0.05, quantity = { 1, 10 } },
				{ item = "Quarter", chance = 0.05, quantity = { 1, 4 } },
			},
		},
		["bin_large"] = {
			Anim = { Dict = "missexile3", Name = "ex03_dingy_search_case_a_michael", Flag = 49 },
			Radius = 0.9,
			Energy = 0.02,
			QuickTime = {
				goalSize = 0.3,
				speed = 1.2,
				stages = 6,
			},
			Container = {
				name = "Large Bin",
				width = 4,
				height = 3,
				maxWeight = 40.0,
			},
			Loot = {
				{ item = "Ball", chance = 0.05 },
				{ item = "Bong", chance = 0.05 },
				{ item = "Bucket", chance = 0.05 },
				{ item = "Butter Knife", chance = 0.05 },
				{ item = "Candle", chance = 0.05 },
				{ item = "Chair", chance = 0.05 },
				{ item = "Clutter", chance = 0.05 },
				{ item = "Crack Pipe", chance = 0.05 },
				{ item = "Crackles o Dawn", chance = 0.05 },
				{ item = "Cutting Board", chance = 0.05 },
				{ item = "Glass", chance = 0.05, quantity = { 1, 10 } },
				{ item = "Grater", chance = 0.05 },
				{ item = "Hotwire Kit", chance = 0.05 },
				{ item = "Lockpick", chance = 0.05 },
				{ item = "Paper", chance = 0.05, quantity = { 1, 10 } },
				{ item = "Pot", chance = 0.05 },
				{ item = "Ps & Qs", chance = 0.05 },
				{ item = "Radio", chance = 0.05 },
				{ item = "Rails", chance = 0.05 },
				{ item = "Rug", chance = 0.05 },
				{ item = "Speaker", chance = 0.05 },
				{ item = "Teapot", chance = 0.05 },
				{ item = "Tire", chance = 0.05 },
				{ item = "Tools", chance = 0.05 },
			},
		},
		["mail"] = {
			Anim = { Dict = "amb@prop_human_bum_bin@idle_a", Name = "idle_a", Flag = 1 },
			Radius = 0.6,
			Energy = 0.02,
			QuickTime = {
				goalSize = 0.2,
				speed = 1.3,
				stages = 6,
			},
			Container = {
				name = "Mailbox",
				width = 3,
				height = 3,
				maxWeight = 10.0,
			},
			Loot = {
				{ item = "Paper", chance = 0.5, quantity = { 1, 10 } },
			},
		},
	},
	Models = {
		[`v_ind_bin_01`] = "bin_small",
		[`prop_cs_bin_01`] = "bin_small",
		[`prop_cs_bin_02`] = "bin_small",
		[`prop_cs_bin_03`] = "bin_small",
		[`prop_bin_01a`] = "bin_small",
		[`prop_bin_02a`] = "bin_small",
		[`prop_bin_03a`] = "bin_small",
		[`prop_bin_04a`] = "bin_small",
		[`prop_bin_05a`] = "bin_small",
		[`prop_bin_06a`] = "bin_small",
		[`prop_bin_07a`] = "bin_small",
		[`prop_bin_07b`] = "bin_small",
		[`prop_bin_07c`] = "bin_small",
		[`prop_bin_07d`] = "bin_small",
		[`prop_bin_08a`] = "bin_small",
		[`prop_bin_08open`] = "bin_small",
		[`prop_bin_09a`] = "bin_small",
		[`prop_bin_10a`] = "bin_small",
		[`prop_bin_10b`] = "bin_small",
		[`prop_bin_11a`] = "bin_small",
		[`prop_bin_11b`] = "bin_small",
		[`prop_bin_12a`] = "bin_small",
		[`prop_bin_beach_01d`] = "bin_small",
		[`prop_bin_delpiero`] = "bin_small",
		[`prop_bin_delpiero_b`] = "bin_small",
		[`zprop_bin_01a_old`] = "bin_small",
		[`hei_heist_kit_bin_01`] = "bin_small",
		[`ch_prop_casino_bin_01a`] = "bin_small",
		[`vw_prop_vw_casino_bin_01a`] = "bin_small",
		[`mp_b_kit_bin_01`] = "bin_small",

		[`prop_cs_dumpster_01a`] = "bin_large",
		[`p_dumpster_t`] = "bin_large",
		[`prop_dumpster_01a`] = "bin_large",
		[`prop_dumpster_02a`] = "bin_large",
		[`prop_dumpster_02b`] = "bin_large",
		[`prop_dumpster_3a`] = "bin_large",
		[`prop_dumpster_4a`] = "bin_large",
		[`prop_dumpster_4b`] = "bin_large",

		[`prop_postbox_01a`] = "mail",
	},
}