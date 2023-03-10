Register("Workbench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Workbench",
		Auto = false,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "anim@amb@warehouse@toolbox@", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "anim@amb@warehouse@toolbox@", Name = "idle", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "anim@amb@warehouse@toolbox@", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = {
		"gr_prop_gr_bench_04b",
		"gr_prop_gr_bench_04a",
	},
})

Register("Fryer", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Fryer",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_chip_fryer",
			"",
})

Register("Burger Shot Fryer", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Burger Shot Fryer",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_chip_fryer",
			"",
})
Register("Burger Shot Grill", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Burger Shot Grill",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_chip_fryer",
			"",
})

Register("Smeltry", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Smeltry",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Jewel Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Jewel Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Class One Weapon Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Class One Weapon Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "gr_prop_gr_bench_02a",
})

Register("Class Two Weapon Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Class Two Weapon Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "gr_prop_gr_bench_02a",
})

Register("Class Three Weapon Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Class Three Weapon Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "gr_prop_gr_bench_02a",
})

Register("Stove", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Stove",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_cooker_03",
})

Register("Odin Station", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Odin Station",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_cooker_03",
})

Register("Processor", {
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = true,
	},
	NoCenter = true,
	Station = {
		Type = "Processor",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Ammo Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Ammo Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "gr_prop_gr_bench_02a",
})

Register("Pizza Oven", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Pizza Oven",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_bbq_3",
})

Register("Grater", {
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = true,
	},
	NoCenter = true,
	Station = {
		Type = "Grater",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_grater",
})

Register("Frying Pan", {
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = true,
	},
	NoCenter = true,
	Station = {
		Type = "Frying Pan",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_kitch_pot_fry",
})

Register("Pot", {
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = true,
	},
	NoCenter = true,
	Station = {
		Type = "Pot",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_kitch_pot_sm",
			"prop_kitch_pot_med",
			"prop_kitch_pot_lrg",
			"prop_kitch_pot_huge",
})

Register("Cutting Board", {
	Stackable = {
		Structure = true,
		Foundation = false,
		Block = true,
	},
	NoCenter = true,
	Station = {
		Type = "Cutting Board",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Keycard Printer", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Keycard Printer",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_printer_01",
})

Register("Vault Keycard Printer", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Vault Keycard Printer",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_printer_01",
})

Register("Resource Sales", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Resource Sales",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "hei_prop_heist_wooden_box",
})

Register("Fish Sales", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Fish Sales",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Deep Water Fish Sales", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Deep Water Fish Sales",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Illegal Fish Sales", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Illegal Fish Sales",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Meat Sales", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Meat Sales",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Saw Mill", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Saw Mill",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_bonesaw",
})

Register("Cnc", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Cnc",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "gr_prop_gr_cnc_01b",
			"gr_prop_gr_cnc_01c",
})

Register("Breeding Chamber", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Breeding Chamber",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "bkr_prop_meth_chiller_01a",
})

Register("Bond Trader", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Bond Trader",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "v_res_fa_chopbrd",
})

Register("Slushie Machine", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Slushie Machine",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_slush_dispenser",
})

Register("Barrel", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Barrel",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_wooden_barrel",
})

Register("Grindstone", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Grindstone",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-0.5, -0.5, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "imp_prop_bench_grinder_01a",
})

Register("Grill", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Grill",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_bbq_1",
			"prop_bbq_2",
			"prop_bbq_3",
			"prop_bbq_5",
})

Register("Sugar and Spice Station", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Sugar and Spice Station",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Bean Machine Station", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Bean Machine Station",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Beanies Station", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Beanies Station",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Beanies Processor", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Beanies Processor",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Burger Shot Processor", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Burger Shot Processor",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Pawn Sell", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Pawn Sell",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Seed Bench", {
	Placement = "Floor",
	NoCenter = true,
	Station = {
		Type = "Seed Bench",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_foodprocess_01",
})

Register("Hela's Distillery", {
	Placement = "Floor",
	NoCenter = false,
	Station = {
		Type = "Hela's Distillery",
		Auto = true,
		Magnet = {
			Offset = vector3(0, -1, 0),
			Heading = 0.0,
		},
		Anim = {
			In = {
				Locked = true,
				Sequence = {
					{ Dict = "amb@prop_human_bbq@male@enter", Name = "enter", Flag = 0, Locked = true },
					{ Dict = "amb@prop_human_bbq@male@idle_a", Name = "idle_b", Flag = 1, Locked = true },
				},
			},
			Out = { Dict = "amb@prop_human_bbq@male@exit", Name = "exit", Flag = 0, BlendIn = 100.0 },
		},
		Camera = {
			Offset = vector3(-1.0, -1.0, 2.0),
			Target = vector3(0.0, 0.0, 1.0),
			Fov = 60.0,
		},
	},
	Model = "prop_wooden_barrel",
})