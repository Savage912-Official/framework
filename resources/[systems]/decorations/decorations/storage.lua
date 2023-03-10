Register("Plastic Tote", {
	Placement = "Floor",
	Container = {
		Type = "stash2",
	},
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = false,
	},
	Model = "v_res_smallplasticbox",
})

Register("Antique Box", {
	Placement = "Floor",
	Container = {
		Type = "stash1",
	},
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = false,
	},
	Model = "ba_prop_battle_antique_box",
})

Register("Safe", {
	Placement = "Floor",
	Container = {
		Type = "safe",
	},
	Stackable = {
		Structure = false,
		Foundation = true,
		Block = false,
	},
	Model = "prop_ld_int_safe_01",
})

Register("Fridge", {
	Placement = "Floor",
	Container = {
		Type = "fridge1",
	},
	Model = "v_res_fridgemodsml",
})

Register("Restaurant Fridge", {
	Placement = "Floor",
	Container = {
		Type = "fridge2",
	},
	Model = "v_res_fridgemodsml",
	NoDecay = true,
})

Register("Evidence Locker", {
	Placement = "Floor",
	Container = {
		Type = "evidencelocker1",
	},
	Model = "p_cs_locker_01_s",
	NoDecay = true,
})

Register("Small Storage Container", {
	Placement = "Floor",
	Container = {
		Type = "stash2",
	},
	Model = "prop_champ_box_01",
})

Register("Medium Storage Container", {
	Placement = "Floor",
	Container = {
		Type = "stash3",
	},
	Model = "prop_box_wood05a",
})

Register("Large Storage Container", {
	Placement = "Floor",
	Container = {
		Type = "stash4",
	},
	Model = "prop_box_wood07a",
})

Register("Military Storage Container", {
	Placement = "Floor",
	Container = {
		Type = "gunsafe",
	},
	Model = "bkr_prop_crate_set_01a",
})

Register("Tool Box", {
	Placement = "Floor",
	Container = {
		Type = "toolbox",
	},
	Model = "prop_tool_box_04",
})