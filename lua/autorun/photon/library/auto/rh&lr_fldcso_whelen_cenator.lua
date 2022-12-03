AddCSLuaFile()

local W = "WHITE"

local name = "FLDCSO Whelen Cenator"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_cenator.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {
	{1,2}
}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "AMBER",
	[4] = "WHITE"
}

COMPONENT.Meta = {
	cenator_f_main = {
		AngleOffset = -90,
		W = 8.5,
		H = 6,
		Sprite = "rh&lr/sprites/whelen_lin6",
		Scale = .45,
		WMult = .5,
		EmitArray = {
			Vector( 2.325, 0, 0 ),
			Vector( 1.39, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.325, 0, 0 ),
			Vector( -1.39, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	cenator_r_main = {
		AngleOffset = 90,
		W = 8.5,
		H = 6,
		Sprite = "rh&lr/sprites/whelen_lin6",
		Scale = .45,
		WMult = .5,
		EmitArray = {
			Vector( 2.325, 0, 0 ),
			Vector( 1.39, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.325, 0, 0 ),
			Vector( -1.39, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	cenator_takedown = {
		AngleOffset = -90,
		W = 1.9,
		H = 2.6,
		Sprite = "sprites/emv/freedom_takedown",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 3.6, 6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[2] = { Vector( -3.6, 6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[3] = { Vector( 10.9, 6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[4] = { Vector( -10.9, 6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[5] = { Vector( 20.74, 6.09, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[6] = { Vector( -20.74, 6.09, 0.3 ), Angle( 0, 0, 0 ), "cenator_f_main" },
	[7] = { Vector( 27.04, 3.69, 0.3 ), Angle( 0, -47, 0 ), "cenator_f_main" },
	[8] = { Vector( -27.04, 3.69, 0.3 ), Angle( 0, 47, 0 ), "cenator_f_main" },
	[9] = { Vector( 27.04, -3.69, 0.3 ), Angle( 0, 47, 0 ), "cenator_r_main" },
	[10] = { Vector( -27.04, -3.69, 0.3 ), Angle( 0, -47, 0 ), "cenator_r_main" },
	[11] = { Vector( 20.74, -6.09, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },
	[12] = { Vector( -20.74, -6.09, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },
	[13] = { Vector( 10.9, -6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },
	[14] = { Vector( -10.9, -6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },
	[15] = { Vector( 3.6, -6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },
	[16] = { Vector( -3.6, -6.29, 0.3 ), Angle( 0, 0, 0 ), "cenator_r_main" },

	[17] = { Vector( -16.505, 6.18, 0.34 ), Angle( 0, 0, 0 ), "cenator_takedown" },
	[18] = { Vector( 16.505, 6.18, 0.34), Angle( 0, 0, 0 ), "cenator_takedown" },

	[19] = { Vector( -29.4, 0, 0.34 ), Angle( 0, 90, 0 ), "cenator_takedown" },
	[20] = { Vector( 29.4, 0, 0.34 ), Angle( 0, -90, 0 ), "cenator_takedown" }

}

COMPONENT.Sections = {
	["auto_cenator"] = {
		[1] = {
			{ 1, "_2" }, { 2, "_2" },
			{ 3, "_3" }, { 4, "_3" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_1" }, { 10, "_1" },
			{ 11, "_1" }, { 12, "_1" },
			{ 13, "_2" }, { 14, "_2" },
			{ 15, "_2" }, { 16, "_2" },
			{ 17, "_4" }, { 18, "_4" },
			{ 19, "_4" }, { 20, "_4" },
		}
	},
	["auto_cenator_front_inner"] = {
		[1] = {
			{ 1, "_2" }, { 2, "_2" },
		},
		[2] = {
			{ 1, "_2" }
		},
		[3] = {
			{ 2, "_2" }
		}
	},
	["auto_cenator_front_mid"] = {
		[1] = {
			{ 3, "_4" }, { 4, "_4" },
		},
		[2] = {
			{ 3, "_4" }
		},
		[3] = {
			{ 4, "_4" }
		}
	},
	["auto_cenator_front_outer"] = {
		[1] = {
			{ 5, "_1" }, { 6, "_1" },
		},
		[2] = {
			{ 5, "_1" }
		},
		[3] = {
			{ 6, "_1" }
		}
	},
	["auto_cenator_front_corner"] = {
		[1] = {
			{ 7, "_1" }, { 8, "_1" },
		},
		[2] = {
			{ 7, "_1" }
		},
		[3] = {
			{ 8, "_1" }
		}
	},
	["auto_cenator_rear_corner"] = {
		[1] = {
			{ 9, "_1" }, { 10, "_1" },
		},
		[2] = {
			{ 9, "_1" }
		},
		[3] = {
			{ 10, "_1" }
		}
	},
	["auto_cenator_rear_outer"] = {
		[1] = {
			{ 11, "_1" }, { 12, "_1" },
		},
		[2] = {
			{ 11, "_1" }
		},
		[3] = {
			{ 12, "_1" }
		}
	},
	["auto_cenator_rear_mid"] = {
		[1] = {
			{ 13, "_2" }, { 14, "_2" },
		},
		[2] = {
			{ 13, "_2" }
		},
		[3] = {
			{ 14, "_2" }
		}
	},
	["auto_cenator_rear_inner"] = {
		[1] = {
			{ 15, "_2" }, { 16, "_2" },
		},
		[2] = {
			{ 15, "_2" }
		},
		[3] = {
			{ 16, "_2" }
		}
	},
}

COMPONENT.Patterns = {
	["auto_cenator"] = {
		["debug"] = {1},
	},
	["auto_cenator_front_inner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 2,0,2,2,2,3,0,3,3,3 },
	},
	["auto_cenator_front_mid"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 
			2,0,2,0,2,0,0,0,
			3,0,3,0,3,0,0,0
		},
	},
	["auto_cenator_front_outer"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 2,0,2,0,2,0,3,0,3,0,3,0 },
	},
	["auto_cenator_front_corner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 3,0,2,0,2,0,2,0,3,0,3,0 },
	},
	["auto_cenator_rear_corner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 3,0,2,0,2,0,2,0,3,0,3,0 },
	},
	["auto_cenator_rear_outer"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 2,0,2,0,2,3,0,3,0,3 },
	},
	["auto_cenator_rear_mid"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 3,0,3,0,3,2,0,2,0,2 },
	},
	["auto_cenator_rear_inner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 2,0,2,0,2,3,0,3,0,3 },
	},
}

COMPONENT.TrafficDisconnect = {
	["auto_cenator_traffic"] = {
		11, 12, 13, 14, 15, 16
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_cenator_front_inner"] = "1097",
			["auto_cenator_front_mid"] = "1097",
			["auto_cenator_front_outer"] = "1097",
			["auto_cenator_front_corner"] = "1097",
			["auto_cenator_rear_corner"] = "1097",
			["auto_cenator_rear_outer"] = "1097",
			["auto_cenator_rear_mid"] = "1097",
			["auto_cenator_rear_inner"] = "1097",
		},
		M3 = {
			["auto_cenator_front_inner"] = "1051",
			["auto_cenator_front_mid"] = "1051",
			["auto_cenator_front_outer"] = "1051",
			["auto_cenator_front_corner"] = "1051",
			["auto_cenator_rear_corner"] = "1051",
			["auto_cenator_rear_outer"] = "1051",
			["auto_cenator_rear_mid"] = "1051",
			["auto_cenator_rear_inner"] = "1051",
		}
	},
	Auxiliary = {
		L = {
			["auto_cenator_traffic"] = "left",
		},
		R = {
			["auto_cenator_traffic"] = "right",
		},
		D = {
			["auto_cenator_traffic"] = "divide",
		}
	},
	Illumination = {
		L = {
			{ 19, W }
		},
		R = {
			{ 20, W }
		},
		F = {
			{ 17, W }, { 18, W }
		},
		T = {
			{ 17, W }, { 18, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )