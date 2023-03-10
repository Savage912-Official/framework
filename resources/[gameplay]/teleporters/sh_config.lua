Config = {
	FadeTime = 1000,
	Defaults = {
		Text = "Enter",
		Icon = "door_front",
		Radius = 1.0,
	},
	Types = {
		["elevator"] = {
			Anim = {
				Unarmed = { Dict = "friends@", Name = "pickupwait", Flag = 48 },
				Armed = {
					["2h"] = { Dict = "move_action@p_m_two@armed@2h_short@idle@high_energy@a", Name = "idle", Flag = 48 },
				},
			},
			Message = "Waiting for the elevator...",
			Duration = 4000,
			Text = "Call Elevator",
			Icon = "elevator",
			MaxDistance = 1.0,
		},
		["manhole"] = {
			Anim = { Dict = "missexile3", Name = "ex03_dingy_search_case_a_michael", Flag = 0 },
			Message = "Lifting manhole...",
			Duration = 6000,
			Text = "Enter Manhole",
			Icon = "do_not_touch",
			MaxDistance = 0.5,
		},
		["ladder"] = {
			Anim = { Dict = "ladders", Name = "get_on_bottom_left_stand_high", Flag = 0 },
			Message = "Climbing ladder...",
			Duration = 500,
			Text = "Climb Ladder",
			Icon = "do_not_touch",
			MaxDistance = 1.5,
		},
	},
	Teleporters = {
		-- {
		-- 	From = {
		-- 		Coords = vector4(-22.64442825317382, -1160.19873046875, 26.10279846191406, 272.1470031738281),
		-- 		Text = "Strange Door",
		-- 	},
		-- 	To = {
		-- 		Coords = vector4(-30.84466552734375, -1160.7952880859375, 26.08261680603027, 93.84049987792967),
		-- 		Instance = "nether",
		-- 	},
		-- 	Text = "Enter Portal",
		-- },
		-- Scrapyard.
		{
			From = vector4(-593.26336669922, -1595.2761230469, 26.798873901367, 351.53842163086), -- Inside paper.
			To = vector4(-593.55487060547, -1598.2180175781, 27.010810852051, 173.8136138916) -- Outside back.
		},
		{
			From = vector4(-613.04907226563, -1624.1762695313, 33.010581970215, 170.87001037598), -- Elevator.
			To = vector4(-621.45239257813, -1640.7094726563, 25.974946975708, 148.32035827637), -- Front door.
			Type = "elevator",
		},
		{
			From = vector4(-621.39630126953, -1632.6276855469, 33.034114837646, 182.0991973877), -- Inside window.
			To = vector4(-621.38916015625, -1634.9963378906, 33.86429977417, 350.38809204102), -- Outside window.
			Text = "Climb Through",
		},
		{
			From = vector4(-625.58459472656, -1618.0679931641, 33.010540008545, 87.491889953613), -- Inside office window.
			To = vector4(-627.53265380859, -1617.9826660156, 33.829536437988, 87.49186706543), -- Outside office window.
			Text = "Climb Through",
		},
		-- Mount Zonah.
		{ -- Left
			From = vector4(-493.4727, -327.0937, 42.30746, 170.4753),
			To = vector4(-493.4727, -327.0937, 69.50498, 170.4753),
			Type = "elevator",
		},
		{ -- Middle
			From = vector4(-490.4681, -327.489, 42.30741, 170.4753),
			To = vector4(-490.4681, -327.489, 69.50498, 170.4753),
			Type = "elevator",
		},
		{ -- Right
			From = vector4(-487.3858, -328.0048, 42.30741, 170.4753),
			To = vector4(-487.3858, -328.0048, 69.50498, 170.4753),
			Type = "elevator",
		},
		{ -- Right
			From = vector4(-436.0687, -359.6116, 34.94945, 352.1592),
			To = vector4(-418.9723, -344.7389, 24.23141, 111.1729),
			Type = "elevator",
		},
		{ -- Main Floor to Surgical Floor
			From = vector4(-452.5645, -288.4482, 34.94955, 106.4872),
			To = vector4(-452.4521, -288.4398, -130.8406, 110.8565),
			FromText = "To Main Floor",
			ToText = "To Surgical Floor",
			Type = "elevator",
		},
		{ -- ICU Floor to Surgical Floor
			From = vector4(-452.482, -288.4036, 69.53972, 116.5305),
			To = vector4(-452.4521, -288.4398, -130.8406, 110.8565),
			FromText = "To ICU Floor",
			ToText = "To Surgical Floor",
			Type = "elevator",
		},
		{ -- Main Floor to ICU Floor
			From = vector4(-452.482, -288.4036, 34.94955, 116.5305),
			To = vector4(-452.482, -288.4036, 69.53972, 116.5305),
			FromText = "To Main Floor",
			ToText = "To ICU Floor",
			Type = "elevator",
		},
		{ -- Main Floor to ICU Floor
			From = vector4(-452.482, -288.4036, 34.94955, 116.5305),
			To = vector4(-439.6243, -335.8737, 78.30087, 79.36766),
			FromText = "To Main Floor",
			ToText = "To Roof",
			Type = "elevator",
		},
		-- Paleto Medical
		{
			From = vector4(-262.9569, 6325.984, 32.45105, 132.1123),
			To = vector4(-258.1419, 6315.065, 37.62463, 313.8937),
			Type = "elevator",
		},
		-- Sewers.
		{
			From = vector4(1013.3727416992, -201.98756408691, 70.19563293457, 56.696697235107), -- Mirror Park Blvd & Glory Way.
			To = vector4(984.64434814453, -147.03244018555, 34.957717895508, 150.81785583496), -- Underground.
			Type = "manhole",
		},
		{
			From = vector4(815.44970703125, -275.24844360352, 66.306716918945, 189.94067382813), -- Glory Way Park.
			To = vector4(858.92047119141, -270.62103271484, 12.242241859436, 52.617195129395), -- Underground.
			Type = "manhole",
		},
		-- Morgue.
		{
			From = vector4(232.35261535645, -1360.9807128906, 28.65180015564, 46.95108795166), -- Outside side door.
			To = vector4(238.96340942383, -1361.7861328125, 29.64799118042, 313.96334838867) -- Inside side door.
		},
		{
			From = vector4(241.08102416992, -1378.9560546875, 33.741775512695, 138.80723571777), -- Outside main door.
			To = vector4(275.8699645996094, -1361.5013427734375, 24.537782669067383, 51.05436706542969) -- Inside main door.
		},
		{
			From = vector4(248.83158874512, -1369.8731689453, 29.64799118042, 311.33029174805), -- Elevator basement 1.
			To = vector4(247.1224822998, -1371.6297607422, 24.537784576416, 318.46032714844), -- Elevator basement 2.
			Type = "elevator",
		},
		{ -- Big residential building near the beach.
			From = vector4(-1398.8795166015625, -985.8211669921876, 19.380441665649418, 119.89460754394533), -- Balcony.
			To = vector4(-1385.216796875, -976.3341064453124, 9.049291610717773, 304.3783874511719) -- Entrance.
		},
		-- Pillbox.
		{
			From = vector4(327.2931823730469, -603.4369506835938, 43.2840576171875, 338.6206970214844), -- Right elevator.
			To = vector4(339.34515380859375, -584.1315307617188, 74.1644058227539, 248.34255981445312), -- Roof.
			Type = "elevator",
		},
		{
			From = vector4(332.0316467285156, -595.5174560546875, 43.28401565551758, 69.5161361694336), -- Left elevator.
			To = vector4(343.3429870605469, -581.6258544921875, 28.79893684387207, 67.9540023803711), -- Lower garage.
			Type = "elevator",
		},
		{
			From = vector4(330.4169921875, -601.190673828125, 43.28408813476563, 68.19266510009766), -- Center elevator.
			To = vector4(341.8624572753906, -585.1767578125, 28.79873466491699, 66.40909576416016), -- Lower lobby.
			Type = "elevator",
		},
		{ -- IAA bunker.
			From = vector4(2049.514892578125, 2949.754150390625, 47.73577499389649, 248.834228515625),
			To = vector4(2033.67138671875, 2942.20361328125, -61.9017448425293, 257.638671875), -- Inside elevator.
			Type = "elevator",
		},
		{ -- IAA server room.
			From = vector4(2155.11767578125, 2920.984130859375, -61.902469635009766, 89.92036437988281), -- Bunker elevator.
			To = vector4(2154.71142578125, 2920.994384765625, -81.07551574707031, 266.5259399414063), -- Server elevator.
			Type = "elevator",
		},
		-- Vinewood hills mansion with poorly designed pool.
		{
			From = vector4(-97.38914489746094, 815.7250366210938, 235.72781372070312, 191.35455322265625), -- Top.
			To = vector4(-76.12193298339844, 822.548583984375, 227.7465057373047, 198.0516815185547), -- Bottom.
		},
		{
			From = vector4(-143.94357299804688, -576.2074584960938, 32.42445373535156, 162.14901733398438), -- Entrance.
			To = vector4(-138.7446441650391, -588.4373779296875, 167.0, 130.60508728027344), -- Mechanic office.
		},
		{
			From = vector4(-145.103271484375, -578.9957275390625, 32.42445373535156, 161.41458129882812), -- Entrance.
			To = vector4(-198.6494140625, -580.7127685546875, 136.00033569335938, 97.65727996826172), -- Mechanic office.
		},
		-- West Vinewood Apartments.
		{
			From = vector4(-351.6211853027344, 14.668652534484863, 47.854736328125, 75.84828186035156), -- Bottom.
			To = vector4(-352.8131408691406, 19.52530097961426, 52.11310577392578, 342.6187438964844), -- Top.
		},
		{
			From = vector4(-366.8011169433594, 49.16692352294922, 54.42980194091797, 266.6871643066406), -- Bottom.
			To = vector4(-366.3780212402344, 52.93090057373047, 58.74763107299805, 261.09130859375), -- Top.
		},
		{ -- Vinewood Mansion 1036 easier access to pool area.
			From = vector4(-103.70337677001952, 590.36669921875, 204.5341949462891, 88.67852783203125), -- Top.
			To = vector4(-105.9429931640625, 580.9995727539062, 196.75997924804688, 178.7886962890625), -- Bottom.
		},
		{ -- Crane.
			From = vector4(-121.09294128417967, -976.9359130859376, 272.141357421875, 75.7684097290039), -- Top.
			To = vector4(-122.22588348388672, -976.6734619140624, 268.9756164550781, 50.58742904663086), -- Bottom.
			"Climb",
		},
		{ -- Union Depository.
			From = vector4(10.178876876831056, -668.1754150390625, 33.44928741455078, 5.22531795501709), -- Top.
			To = vector4(0.8698683381080627, -703.1637573242188, 16.13101387023926, 334.4388122558594), -- Bottom.
			Type = "elevator",
		},
		{ -- Little Seoul Access Tunnel.
			From = vector4(-743.48388671875, -667.9166259765625, 30.21894073486328, 230.23558044433597), -- Top.
			To = vector4(-763.9580078125, -690.603515625, 11.601003646850586, 98.96837615966795), -- Bottom.
			Type = "manhole",
		},
		{ -- Humane Labs Elevator.
			From = vector4(3540.52294921875, 3675.4013671875, 28.121139526367188, 169.53482055664065), -- Top.
			To = vector4(3540.454345703125, 3675.357666015625, 20.991792678833008, 165.5758056640625), -- Bottom.
			Type = "elevator",
		},
		{ -- Submarine.
			From = vector4(2692.54736328125, 6653.55517578125, -18.546817779541016, 89.20428466796875), -- In.
			To = vector4(514.335693359375, 4888.3505859375, -62.5894889831543, 179.2608642578125), -- Out.
		},
		-- Casino.
		{
			From = vector4(935.5089111328124, 46.9787483215332, 81.09574890136719, 138.0622711181641), -- Outside.
			To = vector4(1089.7069091796875, 205.898681640625, -48.99971008300781, 356.0259704589844), -- Inside.
		},
		{
			From = vector4(1121.02587890625, 214.94447326660156, -49.44014739990234, 89.25188446044922), -- Outside teller.
			To = vector4(1120.8780517578125, 222.0347900390625, -49.43510437011719, 89.21711730957031), -- Inside teller.
		},
		{ -- Cayo Perico: Villa.
			From = vector4(5011.47998046875, -5750.4345703125, 28.93979263305664, 146.691650390625), -- Top.
			To = vector4(5012.53125, -5746.75439453125, 15.48443412780761, 146.7845001220703), -- Bottom.
			Type = "elevator",
		},
		{ -- Cayo Perico: Air Control Tower.
			From = vector4(4367.57666015625, -4574.70654296875, 4.20775079727172, 22.37722969055175), -- Bottom.
			To = vector4(4366.3662109375, -4574.59228515625, 13.21381473541259, 203.3589782714844), -- Top.
			Text = "Take Stairs",
		},
	}
}
