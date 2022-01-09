Config.Groups = {
	{
		name = "Prison",
		coords = vector3(1767.4293212890625, 2546.900146484375, 45.55982971191406),
		radius = 500,
		locked = true,
		overrides = {
			{ coords = vector3(1845.197998046875, 2585.239990234375, 46.09928894042969), locked = false }, -- Enterance.
			{ coords = vector3(1835.5213623046875, 2587.24609375, 46.25360107421875), locked = false }, -- Visitation.
			{ coords = vector3(1773.402587890625, 2569.47314453125, 45.69263076782226), ignore = true }, -- Double door next to Infirmary (L).
			{ coords = vector3(1773.44775390625, 2567.537353515625, 45.75871276855469), ignore = true }, -- Double door next to Infirmary (R).
			{ coords = vector3(1757.431396484375, 2499.54736328125, 45.73142623901367), ignore = true }, -- Hallway to Nothing (L).
			{ coords = vector3(1754.3360595703125, 2497.71044921875, 45.83632659912109), ignore = true }, -- Hallway to Nothing (R).
			{ coords = vector3(1776.159912109375, 2552.3916015625, 45.57792282104492), locked = false }, -- Cafeteria door to yard.
			{ coords = vector3(1786.6405029296875, 2560.291259765625, 46.00416946411133), locked = false }, -- Cafeteria to Kitchen.
			{ coords = vector3(1838.0828857421875, 2572.031494140625, 46.39877319335937), locked = false }, -- Changing room to Bathroom.
		},
	},
	{
		name = "Sandy PD & Hospital",
		coords = vector3(1843.6820068359375, 3685.4541015625, 34.26052856445312),
		radius = 260,
		locked = true,
	},
	{
		name = "Pillbox",
		coords = vector3(321.57473754883, -583.23687744141, 43.279979705811),
		radius = 50,
		locked = true,
		overrides = {
			{ coords = vector3(305.22186279296875, -582.3056030273438, 43.43391036987305), locked = false }, -- Main to Ward A (Double).
			{ coords = vector3(324.23602294921875, -589.2261962890625, 43.43391036987305), locked = false }, -- Main to Ward B (Double).
			{ coords = vector3(326.5498962402344, -578.0406494140625, 43.43391036987305), locked = false }, -- Ward A to Ward B (Double).
			{ coords = vector3(349.3137512207031, -586.3259887695312, 43.43391036987305), locked = false }, -- Ward B to Ward C (Double).
			{ coords = vector3(318.4846801757813, -579.2281494140625, 43.43391036987305), locked = false }, -- Intense Care (Double).
			{ coords = vector3(328.7010803222656, -587.3118896484375, 43.43391036987305), locked = false }, -- Bathroom.
			{ coords = vector3(328.9761657714844, -586.5975341796875, 43.43391036987305), locked = false }, -- Bathroom.
			{ coords = vector3(331.8989562988281, -568.1724243164062, 43.43391036987305), ignore = true }, -- Ward B Exit (L).
			{ coords = vector3(334.3179321289063, -569.0528564453125, 43.43391036987305), ignore = true }, -- Ward B Exit (R).
			{ coords = vector3(310.9024353027344, -602.540283203125, 43.43391036987305), ignore = true }, -- Break Room.
			{ coords = vector3(303.90869140625, -596.5780029296875, 43.43391036987305), locked = false }, -- Break Room to Cloakroom.
			{ coords = vector3(353.322265625, -579.1442260742188, 44.14674377441406), locked = false }, -- ICU.
			{ coords = vector3(351.4538269042969, -583.239501953125, 44.08108139038086), locked = false }, -- ICU.
		},
	},
	{
		name = "Paleto Medical",
		coords = vector3(-256.3061828613281, 6317.18212890625, 32.42717361450195),
		radius = 100,
		locked = true,
		overrides = {
			{ coords = vector3(-249.84161376953128, 6331.81640625, 32.5875015258789), locked = false }, -- Front to reception.
			{ coords = vector3(-255.3900909423828, 6321.27685546875, 32.46699142456055), locked = false }, -- Beds area.
			{ coords = vector3(-251.98960876464844, 6323.37451171875, 32.46699142456055), locked = false }, -- Waiting room to hallway.
			{ coords = vector3(-253.17071533203128, 6328.53271484375, 32.46699142456055), locked = false }, -- Waiting room to reception.
		},
	},
	{
		name = "City Hall",
		coords = vector3(-549.9605102539062, -195.8555908203125, 38.22295379638672),
		radius = 50,
		locked = true,
		overrides = {
			{ coords = vector3(-529.7550048828125, -183.2404937744141, 38.34344100952148), ignore = true },
			{ coords = vector3(-531.0458374023438, -180.98399353027344, 38.34344100952148), ignore = true },
			{ coords = vector3(-550.7864379882812, -183.2413024902344, 38.34754180908203), ignore = true },
			{ coords = vector3(-569.098388671875, -216.0363922119141, 38.35443878173828), ignore = true },
			{ coords = vector3(-571.3546142578125, -217.31919860839844, 38.35443878173828), ignore = true },
			{ coords = vector3(-544.3212890625, -187.4945068359375, 47.54306030273437), ignore = true },
			{ coords = vector3(-546.5814208984375, -188.77850341796875, 47.54306030273437), ignore = true },
			{ coords = vector3(-536.7028198242188, -187.28829956054688, 47.54306030273437), ignore = true },
			{ coords = vector3(-537.9937133789062, -185.03179931640625, 47.54306030273437), ignore = true },
		},
	},
	{
		name = "MRPD",
		coords = vector3(449.9324035644531, -987.0167236328124, 29.5869255065918),
		radius = 100,
		locked = true,
		overrides = {
			{ coords = vector3(434.7444, -983.0781, 30.8153), ignore = true },
			{ coords = vector3(434.7444, -980.7556, 30.8153), ignore = true },
		},
	},
	{
		name = "Paleto PD",
		coords = vector3(-441.0958251953125, 6005.5146484375, 31.71618270874023),
		radius = 30,
		locked = true,
	},
	{
		name = "La Mesa PD",
		coords = vector3(842.8035278320312, -1299.8638916015625, 27.994426727294925),
		radius = 50,
		locked = true,
		overrides = {
			{ coords = vector3(840.211669921875, -1305.703857421875, 23.32078742980957), ignore = true },
			{ coords = vector3(837.276611328125, -1305.7039794921875, 23.3207893371582), ignore = true },
			{ coords = vector3(834.4094848632812, -1305.7039794921875, 23.3207893371582), ignore = true },
		},
	},
	{
		name = "Davis PD",
		coords = vector3(373.0433044433594, -1599.5450439453125, 29.29217147827148),
		radius = 50,
		locked = true,
	},
	{
		name = "Cayo Villa",
		coords = vector3(5028.58544921875, -5748.40185546875, 16.28327369689941),
		radius = 250,
		locked = true,
	},
	{
		name = "Cayo Hanger",
		coords = vector3(4472.3759765625, -4512.6494140625, 4.18709707260131),
		radius = 600,
		locked = true,
	},
	{
		name = "Cayo Main Docks",
		coords = vector3(4933.88720703125, -5202.65576171875, 2.4674265384674),
		radius = 300,
		locked = true,
	},
	{
		name = "Cayo Main Checkpoint",
		coords = vector3(5145.69189453125, -4950.6552734375, 14.24116706848144),
		radius = 20,
		locked = true,
	},
	{
		name = "Cayo Cove",
		coords = vector3(4953.65380859375, -4891.39697265625, 4.60661840438842),
		radius = 300,
		locked = true,
	},
	{
		name = "Weed",
		coords = vector3(168.0943145751953, -228.05804443359375, 54.22780609130859),
		radius = 50,
		locked = true,
	},
	{
		name = "Bail Bonds",
		coords = vector3(-226.3581695556641, 6335.2568359375, 32.36733627319336),
		radius = 20,
		locked = true,
	},
	{
		name = "PDM",
		coords = vector3(-45.38729476928711, -1104.2705078125, 26.42233085632324),
		radius = 50,
		locked = true,
		overrides = {
			{ coords = vector3(-37.49523544311523, -1108.7884521484375, 26.64494132995605), locked = false },
			{ coords = vector3(-38.98845291137695, -1108.2642822265625, 26.69929313659668), locked = false },
			{ coords = vector3(-60.45976638793945, -1094.5400390625, 26.79322242736816), locked = false },
			{ coords = vector3(-59.99090957641601, -1093.1563720703125, 26.85989570617675), locked = false },
		},
	},
	{
		name = "Burger Shot (Test)",
		coords = vector3(-1190.06, -894.1384, 14.76116),
		radius = 50,
		locked = true,
	},
	{
		name = "Liquour (Test)",
		coords = vector3(1166.549, 2707.901, 38.1643),
		radius = 30.0,
		locked = true,
	},
	{
		name = "Bank (Test)",
		coords = vector3(1176.122, 2710.999, 38.09333),
		radius = 30.0,
		locked = true,
	},
	{
		name = "Humane (Test)",
		coords = vector3(3616.516, 3737.65, 28.68328),
		radius = 300.0,
		locked = true,
		overrides = {
			{ coords = vector3(3594.631, 3704.908, 29.839), ignore = true },
			{ coords = vector3(3594.728, 3704.839, 29.839), ignore = true },
			{ coords = vector3(3555.947, 3685.547, 27.121), locked = true },
		},
	}
}