Config = {
	Tax = 0.07,
	MoneyFlag = 0,
	UseDebit = true,
	Garages = {
		[0] = 4, -- Compacts.
		[1] = 4, -- Sedans.
		[2] = 4, -- SUVs.
		[3] = 4, -- Coupes.
		[4] = 4, -- Muscle.
		[5] = 4, -- Sports Classics.
		[6] = 4, -- Sports.
		[7] = 4, -- Super.
		[8] = 4, -- Motorcycles.
		[9] = 4, -- Off-road.
		[10] = 4, -- Industrial.
		[11] = 4, -- Utility.
		[12] = 4, -- Vans.
		[13] = 4, -- Cycles.
		[14] = 1, -- Boats.
		[15] = 17, -- Helicopters.
		[16] = 11863, -- Planes.
		[17] = 4, -- Service.
		[18] = 4, -- Emergency.
		[19] = 4, -- Military.
		[20] = 4, -- Commercial.
		[21] = 4, -- Trains.
	},
	MaxRadius = 30.0,
	Markers = {
		DrawRadius = 6.0,
		Radius = 1.0,
	},
	Menu = {
		PositionOffset = { X = 500, Y = 50 },
		WidthOffset = -50,
	},
	Dealers = {
		{
			Name = "PDM",
			Blip = {
				name = "Premium Deluxe Motorsport",
				id = 225,
				scale = 0.5,
				color = 29,
			},
			License = "drivers",
			Kiosk = vector3(-32.94242095947265, -1097.3548583984375, 27.27439308166504),
			VehicleDisplay = vector4(-36.6460952758789, -1093.5504150390625, 27.30228614807129, 24.21664428710937),
			VehicleSpawn = vector4(-23.54471015930175, -1094.11083984375, 27.30523300170898, 337.6446533203125),
			Vehicles = {
					"asea",
					"asterope",
					"avarus",
					"bf400",
					"bfinjection",
					"bifta",
					"bison",
					"bison2",
					"bison3",
					"blista",
					"bmx",
					"bobcatxl",
					"brawler",
					"burrito",
					"burrito2",
					"burrito3",
					"burrito4",
					"caddy",
					"caddy2",
					"caddy3",
					"cheburek",
					"chimera",
					"cliffhanger",
					"cruiser",
					"daemon",
					"dilettante",
					"dilettante2",
					"dune",
					"emperor",
					"emperor2",
					"enduro",
					"esskey",
					"faggio",
					"faggio2",
					"faggio3",
					"fcr",
					"fcr2",
					"fixter",
					"gargoyle",
					"gburrito",
					"gburrito2",
					"hexer",
					"ingot",
					"innovation",
					"intruder",
					"issi2",
					"kalahari",
					"lurcher",
					"manchez",
					"mesa",
					"mesa3",
					"minivan",
					"minivan2",
					"moonbeam2",
					"mower",
					"panto",
					"paradise",
					"pony",
					"pony2",
					"prairie",
					"premier",
					"radi",
					"ratbike",
					"ratloader",
					"rebel",
					"rebel2",
					"regina",
					"rhapsody",
					"romero",
					"rumpo",
					"rumpo2",
					"rumpo3",
					"sadler",
					"scorcher",
					"slamvan",
					"speedo",
					"stanier",
					"stratum",
					"surfer",
					"surfer2",
					"tractor",
					"tribike",
					"tribike2",
					"tribike3",
					"virgo3",
					"voodoo2",
					"warrener",
					"washington",
					"wolfsbane",
					"youga",
					"youga2",
					"zombiea",
					"zombieb",
					"ztype",

			},
		},
		{
			Group = "pdm",
			Faction = "dealership",
			Name = "PDM Employee Kiosk",
			Kiosk = vector3(-26.16110038757324, -1102.976318359375, 27.27428245544433),
			VehicleDisplay = vector4(-41.75972366333008, -1096.797607421875, 27.27436637878418, 24.90196228027343),
			VehicleSpawn = vector4(-23.54471015930175, -1094.11083984375, 27.30523300170898, 337.6446533203125),
			Vehicles = {
			  		  	--"accord2",
						--"ae86",
						"akuma",
						"alpha",
						"ardent",
		    		  	--"ariant",
						"asbo",
						"bagger",
						"baller",
						"baller2",
						"baller3",
						"baller4",
						"banshee",
						"banshee2",
						"bansheeas",
						"bati",
						"bati2",
						"bestiagts",
						"bjxl",
						"blade",
						"blazer",
						"blazer3",
						"blazer4",
						"blista2",
						"blista3",
						"bodhi2",
						"brioso",
						"brioso2",
						--"brz13",
						"btype",
						"btype2",
						"btype3",
						"buccaneer",
						"buccaneer2",
						"buffalo",
						"buffalo2",
						"buffalo3",
						"buffalo4",
						"buffaloh",
						"bullet",
						--"camaro2",
						"caracara2",
						"carbonizzare",
						"carbonrs",
						"casco",
						"cavalcade",
						"cavalcade2",
						--"charger",
						--"charger2",
						--"charger3",
						--"chevelle",
						"chino",
						"chino2",
						--"civtaurus",
						"club",
						"cog55",
						"cogcabrio",
						"cognoscenti",
						"comet2",
						"comet3",
						"comet4",
						"comet5",
						"comet5",
						"contender",
						"coquette",
						"coquette2",
						"coquette3",
						"coquette4",
						--"corvette2",
						--"corvette3",
						"daemon2",
						"defiler",
						"deluxo",
						--"demon",
						"­diablous",
						"diablous2",
						"dloader",
						"dominator",
						"dominator2",
						"dominator3",
						"dominator7",
						"dominator8",
						"double",
						"drafter",
						"dubsta",
						"dubsta2",
						"dubsta3",
						"dukes",
						"dune2",
						"dynasty",
						--"e60",
						"elegy",
						"elegy2",
						--"elegyrh72",
						"ellie",
						"euros",
						"everon",
						"exemplar",
						--"exige",
						"f620",
						"faction",
						"faction2",
						"faction3",
						"fagaloa",
						"felon",
						"felon2",
						"feltzer2",
						"feltzer3",
						"flashgt",
						"fq2",
						"fugitive",
						"furoregt",
						"fusilade",
						"futo",
						"futo2",
						"gauntlet",
						"gauntlet2",
						"gauntlet3",
						"gauntlet4",
						"gauntlet5",
						"gauntletctx",
						"gb200",
						"glendale",
						"glendale2",
						"granger",
						"granger2",
						"gresley",
						"gt500",
						"habanero",
						"hakuchou",
						"hakuchou2",
						"hellion",
						"hermes",
						"hotknife",
						"huntley",
						"hustler",
						--"impala",
						--"impala2",
						--"impala3",
						--"impala4",
						--"impaler",
						"issi3",
						"issi7",
						"italigto",
						"iwagen",
						"jackal",
						"jester",
						"jester2",
						"jester3",
						"jester4",
						"journey",
						"jugular",
						"kamacho",
						"kanjo",
						"khamelion",
						"komoda",
						"krieger",
						"kuruma",
						"landstalker",
						"le7b",
						"lectro",
						"locust",
						"lynx",
						"mamba",
						"manana",
						"manana2",
						"massacro",
						"massacro2",
						--"mgt",
						--"miata",
						"michelli",
						--"mitsugto",
						--"models",
						"monroe",
						"moonbeam",
						--"mustang2",
						"nebula",
						"nemesis",
						"neon",
						--"nexus",
						"nightblade",
						"nightshade",
						"ninef",
						"ninef2",
						"omnis",
						"oracle",
						"oracle2",
						"oracxsle",
						"pariah",
						"patriot",
						"patriot2",
						"patriot3",
						"pcj",
						"penumbra",
						"peyote",
						"peyote2",
						"peyote3",
						"phoenix",
						"picador",
						"pigalle",
						--"polestar",
						"previon",
						"primo",
						"primo2",
						--"r35gtr",
						--"r8",
						"raiden",
						--"ram2500",
						--"ram2500lifted",
						"rancherxl",
						"rapidgt",
						"rapidgt2",
						"rapidgt3",
						"raptor",
						"ratloader2",
						"remus",
						"retinue",
						"retinue2",
						"revolter",
						"riata",
						--"rmodgt63",
						"rocoto",
						"roxanne",
						--"royallancer",
						"rt3000",
						"ruffian",
						"ruiner",
						"ruston",
						--"rx7v",
						"s80",
						"sabregt",
						"sabregt2",
						"sanchez",
						"sanchez2",
						"sanctus",
						"sandking",
						"sandking2",
						"savestra",
						"schafter2",
						"schafter3",
						"schafter4",
						"schlagen",
						"schwarzer",
						"seminole",
						"sentinel",
						"sentinel2",
						"sentinel3",
						"serrano",
						"seven70",
						"sheava",
						"shotaro",
						--"skyline",
						"slamvan2",
						"slamvan3",
						"sovereign",
						"specter",
						"specter2",
						"speedo2",
						"stafford",
						"stalion",
						"stalion2",
						--"starion",
						"stinger",
						"stingergt",
						--"stratumc",
						"streiter",
						"stretch",
						"stromberg",
						"stryder",
						"sugoi",
						"sultan",
						"sultan2",
						"sultan3",
						"sultanrs",
						--"sunrise1",
						"superd",
						"superd3",
						--"supra2",
						--"supra4",
						"surano",
						"surge",
						"swinger",
						"taco",
						"tailgater",
						"tampa",
						"tampa2",
						"thrax",
						"thrust",
						"torero",
						"tornado",
						"tornado2",
						"tornado3",
						"tornado4",
						"tornado5",
						"tornado6",
						"tropos",
						"tulip",
						"vader",
						"vagrant",
						"vamos",
						"verlierer2",
						"vigero",
						"vigeronew",
						"vindicator",
						--"viper",
						"virgo",
						"virgo2",
						"viseris",
						"voltic",
						"voodoo",
						"vortex",
						"warrener2",
						"weevil",
						"windsor",
						"windsor2",
						"xls",
						"yosemite",
						"yosemite2",
						"yosemite3",
						"youga4",
						"z190",
						"zion",
						"zion2",
						"zion3",
						"zorrusso",
						--"zr350",
						--"zrgpr",
			},
		},
		{
			Group = "lux",
			Faction = "dealership",
			Name = "Malone and Sons",
			Blip = {
				name = "Malone and Sons",
				id = 595,
				scale = 0.5,
				color = 29,
			},
			License = "drivers",
			Kiosk = vector3(-782.3270263671875, -1023.2095947265624, 13.36014556884765),
			VehicleDisplay = vector4(-784.259033203125, -1021.328125, 13.56505489349365, 339.7998046875),
			VehicleSpawn = vector4(-784.259033203125, -1021.328125, 13.56505489349365, 339.7998046875),
			Vehicles = {
				--"458italia",
				--"812sf",
				--"911ts",
				"adder",
				"autarch",
				--"amggt",
				--"aventsvjr",
				--"bt62r",
				"f8t",
				--"huracan2",
				"speedster",
				--"2017chiron",
				--"2019chiron",
				--"divo",
				--"eb110",
				--"f1",
				--"huayra",
				--"zonda2",
				--"italigtb",
				--"italigtb2",
				"jesko",
				--"tezeract",
				"sc1",
				"paragon",
				"penetrator",
				"osiris",
				"pfister811",
				--"pgt3",
				"nero",
				"nero2",
				--"roma20",
				--"rs6avant20",
				"t20",
				"tempesta",
				"vagner",
				"zentorno",
				"infernus",
				"infernus2",
				"tyrus",
				"xa21",
				"cheetah",
				"cheetah2",
				"fmj",
				"visione",
				"tyrant",
				"re7b",
				"turismo2",
				"turismor",
				"taipan",
				"deveste",
				"vacca",
				"reaper",
				"cyclone",
				"gp1",
				"prototipo",
				"entity2",
				"entityxf",
				--"g65",
				--"diablo",
				"emerus",
				"furia",
				--"zagato",
				"superd3",
				"calico",
				"comet6",
				"cypher",
				"growler",
				"vectre",
				'tailgater2',
				"vstr",
				"zerouno",
				--"macan",
				"italirsx",
				"landstalker2",
				"toros",
				"rebla",
				"novak",
				"imorgon",
			},
		},
		--[[{
			Name = "Sanders Motorcycles",
			Blip = {
				name = "Sanders Motorcycles",
				id = 226,
				scale = 0.5,
				color = 29,
			},
			License = "drivers",
			Kiosk = vector3(268.7088623046875, -1155.370849609375, 29.29094314575195),
			VehicleDisplay = vector4(265.4087829589844, -1149.875244140625, 29.29168510437011, 177.6516876220703),
			VehicleSpawn = vector4(259.2971496582031, -1155.644287109375, 29.28143310546875, 88.65755462646484),
			Vehicles = {
				"beaver",
				"blackhorse",
				"bluestar",
				"chingon",
				"challengerb",
				"maya",
				"fz50",
				"gsxr",
				"hayabusa",
			},
		},]]
		{
			Name = "Pegasus Concierge",
			Blip = {
				name = "Pegasus Concierge",
				id = 64,
				scale = 0.5,
				color = 29,
			},
			License = "pilots",
			Kiosk = vector3(-704.21453857422, -1398.3010253906, 5.495285987854),
			VehicleDisplay = vector4(-692.22705078125, -1415.7412109375, 5.0005240440369, 81.447441101074),
			VehicleSpawn = vector4(-745.19757080078, -1468.4678955078, 5.0005207061768, 138.82852172852),
			Vehicles = {
				"buzzard2",
				"frogger",
				"maverick",
				"supervolito",
				"supervolito2",
				"swift",
				"swift2",
				"volatus",
			},
		},
		{
			Name = "Los Santos Aviation",
			Blip = {
				name = "Los Santos Aviation",
				id = 90,
				scale = 0.5,
				color = 29,
			},
			License = "pilots",
			Kiosk = vector3(-948.7182006835938, -2946.264404296875, 13.94506359100341),
			VehicleDisplay = vector4(-959.7193603515624, -2978.796142578125, 13.94507980346679, 57.25204086303711),
			VehicleSpawn = vector4(-970.7266845703124, -3010.232177734375, 13.94506168365478, 53.18917083740234),
			Vehicles = {
				"velum",
				"velum2",
				"microlight",
				"nimbus",
				"mammatus",
				"luxor",
				"luxor2",
				"alphaz1",
				"dodo",
				"duster",
				"cuban800",
			},
		},
		{
			Name = "Commercial Vehicles",
			Blip = {
				name = "Commercial Vehicles",
				id = 477,
				scale = 0.5,
				color = 29,
			},
			License = "drivers",
			Kiosk = vector3(832.39379882813, -1923.4107666016, 30.314649581909),
			VehicleDisplay = vector4(837.16009521484, -1935.9244384766, 28.967018127441, 172.94006347656),
			VehicleSpawn = vector4(847.17272949219, -1952.4404296875, 28.973407745361, 88.287246704102),
			Vehicles = {
				"airbus",
				"benson",
				"biff",
				"boxville",
				"boxville2",
				"boxville3",
				"boxville4",
				"bus",
				"camper",
				"flatbed",
				"forklift",
				"guardian",
				"hauler",
				"mule",
				"mule2",
				"mule3",
				"packer",
				"phantom",
				"pounder",
				"rentalbus",
				"rubble",
				"scrap",
				"taxi",
				"tiptruck",
				"tiptruck2",
				"tourbus",
				"tractor2",
				"trash",
				"utillitruck",
				"utillitruck2",
				"utillitruck3",
			},
		},
		{
			Name = "High End Boat Shop",
			Blip = {
				name = "High End Boat Shop",
				id = 410,
				scale = 0.5,
				color = 29,
			},
			License = "boating",
			Kiosk = vector3(-801.55499267578, -1513.4299316406, 1.5952146053314),
			VehicleDisplay = vector4(-804.75634765625, -1505.3986816406, 0.83080947399139, 108.89497375488),
			VehicleSpawn = vector4(-804.75634765625, -1505.3986816406, 0.83080947399139, 108.89497375488),
			Vehicles = {
				"jetmax",
				"marquis",
				"seashark",
				"seashark3",
				"speeder",
				"speeder2",
				"submersible",
				"submersible2",
				"toro",
				"toro2",
				"tug",
			},
		},
		{
			Name = "Boat Shop",
			Blip = {
				name = "Boat Shop",
				id = 427,
				scale = 0.5,
				color = 29,
			},
			License = "boating",
			Kiosk = vector3(-1615.2301025390625, 5259.78662109375, 3.97409796714782),
			VehicleDisplay = vector4(-1621.3541259765625, 5259.232421875, -0.47485128045082, 27.17452812194824),
			VehicleSpawn = vector4(-1621.3541259765625, 5259.232421875, -0.47485128045082, 27.17452812194824),
			Vehicles = {
				"dinghy2",
				"dinghy3",
				"dinghy4",
				"longfin",
				"seashark",
				"seashark3",
				"squalo",
				"suntrap",
				"tropic",
				"tropic2",
			},
		},
		{
			Group = "lspd",
			Faction = "pd",
			Name = "LSPD Shop MRPD",
			License = "drivers",
			Kiosk = vector3(446.646484375, -1011.4799194335938, 28.52850914001465),
			Garage = 23,
			VehicleDisplay = vector4(441.9618225097656, -1015.2440185546876, 28.6624641418457, 89.75072479248047),
			VehicleSpawn = vector4(449.5983581542969, -1025.16748046875, 28.58170318603515, 9.87581920623779),
			Vehicles = {
				"pdalamo",
				"pdbike",
				"pdbuffalo",
				"pdbuffalo2",
				"pdscout",
				"pdstanier",
				"pdtorence",
				"pdfugitive",
				"trualamo3",
				"umkbuffalo",
				"umkalamo",
			},
		},
		{
			Group = "bcso",
			Faction = "pd",
			Name = "BCSO Shop Sandy",
			License = "drivers",
			Kiosk = vector3(1839.388, 3689.262, 33.9746),
			Garage = 23,
			VehicleDisplay = vector4(1845.176, 3689.781, 33.9746, 308.4778),
			VehicleSpawn = vector4(1845.176, 3689.781, 33.9746, 308.4778),
			Vehicles = {
				"pdalamo",
				"pdbike",
				"pdbuffalo",
				"pdbuffalo2",
				"pdscout",
				"pdstanier",
				"pdtorence",
				"pdfugitive",
				"trualamo3",
				"umkbuffalo",
				"umkalamo",
			},
		},
		{
			Group = "paramedic",
			Faction = "ems",
			Name = "Paramedic Shop",
			License = "drivers",
			Kiosk = vector3(183.2513, -1653.412, 29.90838),
			Garage = 23,
			VehicleDisplay = vector4(179.2382, -1657.935, 29.80349, 226.5789),
			VehicleSpawn = vector4(179.2382, -1657.935, 29.80349, 226.5789),
			Vehicles = {
				"lsfd3",
				"lsfd4",
				"bcfdbat",
				"lsfdbuffalo",
			},
		},
		{
			Group = "lsms",
			Faction = "ems",
			Name = "LSMS Shop",
			License = "drivers",
			Kiosk = vector3(-418.5745, -353.1158, 24.40017),
			Garage = 23,
			VehicleDisplay = vector4(-429.9123, -352.6846, 24.22939, 84.30135),
			VehicleSpawn = vector4(-421.1067, -359.9683, 24.23036, 17.1824),
			Vehicles = {
				"lsmsgresley",
				"lsmsspeedo",
			},
		},
		{
			Group = "firefighter",
			Faction = "ems",
			Name = "Firefighter Shop",
			License = "drivers",
			Kiosk = vector3(203.6096, -1669.246, 29.80349),
			Garage = 23,
			VehicleDisplay = vector4(201.4927, -1675.171, 29.80349, 48.81543),
			VehicleSpawn = vector4(201.4927, -1675.171, 29.80349, 48.81543),
			Vehicles = {
				"lsfdcmd",
				"lsfdtruck",
				"lsfdbuffalo",
			},
		},
		{
			Group = "sasp",
			Faction = "pd",
			Name = "SASP Paleto",
			License = "drivers",
			Kiosk = vector3(-454.3643, 6021.23, 31.48443),
			VehicleDisplay = vector4(-465.6003, 6025.306, 31.34047, 308.3509),
			VehicleSpawn = vector4(-468.957, 6038.506, 31.34049, 225.1765),
			Vehicles = {
				"spalamo",
				"spbike",
				"spbuffalo",
				"spbuffalo2",
				"spscout",
				"spstanier",
				"sptorence",
				"spfugitive",
				"sptrualamo3",
				"umkbuffalo",
				"umkalamo",
			},
		},
		{
			Group = "sams",
			Faction = "federal",
			Name = "SAMS Shop",
			License = "drivers",
			Kiosk = vector3(14.7060489654541, -893.2334594726562, 30.02250862121582),
			Garage = 23,
			VehicleDisplay = vector4(18.73518562316894, -887.3465576171875, 30.07347869873047, 245.61473083496097),
			VehicleSpawn = vector4(18.73518562316894, -887.3465576171875, 30.07347869873047, 245.61473083496097),
			Vehicles = {
				"pdalamo",
				"pdbuffalo",
				"pdscout",
				"pdstanier",
				"pdtorence",
			},
		},
		--[[{
			Faction = "lsda",
			Name = "LSDA Shop",
			License = "drivers",
			Kiosk = vector3(40.00243377685547, -888.324462890625, 30.18996620178222),
			Garage = 23,
			VehicleDisplay = vector4(35.31072998046875, -890.8150024414062, 30.13301467895507, 249.126953125),
			VehicleSpawn = vector4(35.31072998046875, -890.8150024414062, 30.13301467895507, 249.126953125),
			Vehicles = {
				"pdfpis",
				"pdcvpi",
				"pdtahoe",
				"fbi",
				"fbi2",
			},
		},--]]
		{
			Group = "doc",
			Faction = "pd",
			Name = "DOC Shop",
			License = "drivers",
			Kiosk = vector3(1840.1448974609375, 2545.832275390625, 45.67203521728515),
			VehicleDisplay = vector4(1844.2188720703127, 2549.895751953125, 45.67203521728515, 271.35009765625),
			VehicleSpawn = vector4(1854.9749755859375, 2537.3203125, 45.67203903198242, 216.4715118408203),
			Vehicles = {
				"pdalamo",
				"pdscout",
			},
		},
		{
			Group = "sapr",
			Faction = "federal",
			Name = "SAPR Shop",
			License = "drivers",
			Kiosk = vector3(371.9177, 792.4434, 187.4935),
			VehicleDisplay = vector4(372.3995, 785.141, 186.4325, 163.4088),
			VehicleSpawn = vector4(372.3995, 785.141, 186.4325, 163.4088),
			Vehicles = {
				"pdcara",
				"pdscout",
				"pdbuffalo2",
				"pdfugitive",
				"pdmesa",
			},
		},
		--[[{
			Faction = "cartel",
			Name = "Small Transportation Shop",
			License = "drivers",
			Kiosk = vector3(5100.09033203125, -5721.3427734375, 15.77476024627685),
			VehicleDisplay = vector4(5092.75048828125, -5734.427734375, 15.772873878479, 324.66107177734375),
			VehicleSpawn = vector4(5092.75048828125, -5734.427734375, 15.772873878479, 324.66107177734375),
			Vehicles = {
				"squaddie",
				"manchez2",
				"winky",
				"verus",
				"vetir",
			},
		},--]]
		--[[{
			Faction = "rat",
			Name = "RAT Shop",
			License = "drivers",
			Kiosk = vector3(464.5466003417969, -1013.0499877929688, 28.07099533081054),
			Garage = 23,
			VehicleDisplay = vector4(463.16461181640625, -1019.5435791015624, 27.5091323852539, 92.00456237792967),
			VehicleSpawn = vector4(454.73779296875, -1019.88232421875, 27.7548656463623, 92.42440795898438),
			Vehicles = {
				"pddemon",
				"pdc8",
				"pdcomet",
				"pdhellcat",
				"pdrs6",
			},
		},
		{
			Faction = "bcso-heat",
			Name = "BCSO HEAT",
			License = "drivers",
			Kiosk = vector3(1866.5810546875, 3707.23388671875, 33.20775604248047),
			Garage = 23,
			VehicleDisplay = vector4(1858.91064453125, 3713.457763671875, 33.25181198120117, 24.3763313293457),
			VehicleSpawn = vector4(1858.91064453125, 3713.457763671875, 33.25181198120117, 24.3763313293457),
			Vehicles = {
				"pddemon",
				"pdhellcat",
			},
		},]]
	},
	Buyer = {
		Delimiter = 0.50,
		Blip = {
			id = 225,
			scale = 0.4,
			color = 6,
			hidden = true,
		},
		Coords = {
			vector3(-16.339670181274418, -1092.3948974609375, 26.67219734191895),
			vector3(-846.3934936523438, -1507.131103515625, -0.4738559722900391),
			vector3(-768.937744140625, -1028.259521484375, 14.13323020935058),
			vector3(-962.2400512695312, -2964.604736328125, 13.94507122039795),
		}
	},
}
