Donators = compileFinal str
	[
		[
			[21992.9,21024.4,5.63972],
			300,
			"BASE1",
			"_Base1Marker",
			"U_IG_leader",
			[			
				"76561197968317840" // LouD
			]
		],
		[
			[9201.78,11462.8,4.83028],
			150,
			"BASE2",
			"_Base2Marker",
			"U_I_G_resistanceLeader_F",
			[			
				"76561197968317840", // LouD
				"76561198009424374", // SOE-BigWookie
				"76561198021646783", // SOE-Cam
				"76561197970379258", // SOE-Size9
				"76561198073474254"  // SOE-Gecko

			]
		],
		[
			[10807.1,17555.2,7.50377],
			150,
			"BASE3",
			"_Base3Marker",
			"U_I_CombatUniform_tshirt",
			[			
				"76561197968317840", // LouD
				"76561198021630490", // [TII] NuclearFart 
				"76561198082966119", // [TII] G r o l s c h
				"76561198070213258"  // [TII] tolowymozes 
			]
		],
		[
			[23734.1,16178.6,5.28792],
			150,
			"BASE4",
			"_Base4Marker",
			"U_I_CombatUniform_tshirt",
			[			
				"76561197968317840", // LouD
				"76561198083639412", // [TIL] WarmasterStuvis
				"76561197977255432", // [TIL] JesterGorky
				"76561197993437773", // [TIL] Vicious
				"76561198085562913", // [TIL] Mac
				"76561198043592519", // [TIL] TheRoge
				"76561197983946797"  // [TIL] Deadly Anteater
			]
		],
		[
			[16854.6,21818.5,0.396514],
			150,
			"BASE5",
			"_Base5Marker",
			"U_IG_Guerilla1_1",
			[			
				"76561197968317840" // LouD
			]
		],
		[
			[25313.1,18765,15.2735],
			150,
			"BASE 6",
			"_Base6Marker",
			"U_IG_Guerilla1_1",
			[			
				"76561197968317840" // LouD
			]
		]
	];
		
if (typeName Donators == "ARRAY") then { Donators = compileFinal str Donators };

publicVariable "Donators";
