AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "FLDCSO Whelen Edge 9000"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/whelenedge.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {
	{1,1},
	{2,0}
}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "S_WHITE"
}

COMPONENT.SubMaterials = {[2] = "rh&lr/fldcso/edge_glass"}

COMPONENT.Meta = {
	auto_edge_halogen = {
		AngleOffset = -90,
		W = 8.5,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_edge_halogen_inner = {
		AngleOffset = -90,
		W = 6.5,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_edge_halogen_corner = {
		AngleOffset = -90,
		W = 9.6,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 4, 0, 0 ),
			Vector( 3.5, 0, 0 ),
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -4, 0, 0 ),
			Vector( -3.5, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_edge_halogen_illum = {
		AngleOffset = -90,
		W = 7.5,
		H = 9.7,
		Sprite = "sprites/emv/arjent_takedown",
		Scale = 1.35,
		WMult = 1.25,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		},
	},
	auto_edge_halogen_side = {
		AngleOffset = -90,
		W = 6.5,
		H = 7.75,
		Sprite = "sprites/emv/arjent_takedown",
		Scale = 1.35,
		WMult = 1.25,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		},
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -5.44, 9.6, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen" },
	[2] = { Vector( -5.44, -9.6, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen" },

	[3] = { Vector( -3.92, 25, 4.735 ), Angle( 0, 72.5, 0 ), "auto_edge_halogen_corner" },
	[4] = { Vector( -3.92, -25, 4.735 ), Angle( 0, 107.5, 0 ), "auto_edge_halogen_corner" },

	[5] = { Vector( -5.44, 16.65, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen_illum" },
	[6] = { Vector( -5.44, -16.65, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen_illum" },

	[7] = { Vector( 5.40, 9.6, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen" },
	[8] = { Vector( 5.40, -9.6, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen" },

	[9] = { Vector( 3.90, 25, 4.735 ), Angle( 0, -72.5, 0 ), "auto_edge_halogen_corner" },
	[10] = { Vector( 3.90, -25, 4.735 ), Angle( 0, -107.5, 0 ), "auto_edge_halogen_corner" },

	[11] = { Vector( 5.40, 16.65, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen_illum" },
	[12] = { Vector( 5.40, -16.65, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen_illum" },

	[13] = { Vector( -0.01, 29.52, 4.735 ), Angle( 0, 0, 0 ), "auto_edge_halogen_side" },
	[14] = { Vector( -0.01, -29.52, 4.735 ), Angle( 0, 180, 0 ), "auto_edge_halogen_side" },
	
	[15] = { Vector( -5.44, 3, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen_inner" },
	[16] = { Vector( -5.44, -3, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen_inner" },
	
	[17] = { Vector( 5.40, 3, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen_inner" },
	[18] = { Vector( 5.40, -3, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen_inner" },
}

COMPONENT.Sections = {
	["auto_whelen_edge"] = {
		[1] = {
			{ 1, "_2"},{ 2, "_2"},
			{ 3, "_1"},{ 4, "_1"},
			{ 5, "_3"},{ 6, "_3"},
			{ 7, "_2"},{ 8, "_2"},
			{ 9, "_1"},{ 10, "_1"},
			--{ 11, "_3"},{ 12, "_3"},
			{ 13, "_3"},{ 14, "_3"},
			{ 15, "_3"},{ 16, "_3"},
			--{ 17, "_3"},{ 18, "_3"},
		}
	},
	["auto_whelen_edge_front_inner"] = {
		[1] = {
			{ 1, "_2"},{ 2, "_2"},
		},
		[2] = {
			{ 1, "_2"}
		},
		[3] = {
			{ 2, "_2"}
		}
	},
	["auto_whelen_edge_front_corner"] = {
		[1] = {
			{ 3, "_1"},{ 4, "_1"},
		},
		[2] = {
			{ 3, "_1"}
		},
		[3] = {
			{ 4, "_1"}
		}
	},
	["auto_whelen_edge_rear_corner"] = {
		[1] = {
			{ 9, "_1"},{ 10, "_1"},
		},
		[2] = {
			{ 9, "_1"}
		},
		[3] = {
			{ 10, "_1"}
		}
	},
	["auto_whelen_edge_rear_inner"] = {
		[1] = {
			{ 7, "_2"},{ 8, "_2"},
		},
		[2] = {
			{ 7, "_2"}
		},
		[3] = {
			{ 8, "_2"}
		}
	},
	["auto_whelen_edge_front_middle"] = {
		[1] = {
			{ 15, "_3"},{ 16, "_3"},
		},
		[2] = {
			{ 15, "_3"}
		},
		[3] = {
			{ 16, "_3"}
		}
	},
}

COMPONENT.Patterns = {
	["auto_whelen_edge"] = {
		["debug"] = { 1 },
	},
	["auto_whelen_edge_front_inner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1,0,1,0,1,0,0,0,0,0,0 },
		["1051"] = { 
			2,0,3,0,2,0,3,0,
			2,0,3,0,2,0,3,0,
			2,0,3,0,2,0,3,0,
			2,0,3,0,2,0,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
		},
	},
	["auto_whelen_edge_front_corner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
		},
	},
	["auto_whelen_edge_rear_corner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1051"] = { 
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,3,0,2,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
			0,2,0,2,0,2,0,3,0,3,0,3,
		},
	},
	["auto_whelen_edge_rear_inner"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1,0,1,0,1,0,0,0,0,0,0 },
		["1051"] = { 
			3,0,2,0,3,0,2,0,
			3,0,2,0,3,0,2,0,
			3,0,2,0,3,0,2,0,
			3,0,2,0,3,0,2,0,
			3,0,3,0,3,0,2,0,2,0,2,0,
			3,0,3,0,3,0,2,0,2,0,2,0,
			3,0,3,0,3,0,2,0,2,0,2,0,
			3,0,3,0,3,0,2,0,2,0,2,0,
		},
	},
	["auto_whelen_edge_front_middle"] = {
		["debug"] = { 1 },
		
		["1097"] = { 0 },
		["1051"] = { 
			0,3,0,2,0,3,0,2,
			0,3,0,2,0,3,0,2,
			0,3,0,2,0,3,0,2,
			0,3,0,2,0,3,0,2,
			0,3,0,3,0,3,0,2,0,2,0,2,
			0,3,0,3,0,3,0,2,0,2,0,2,
			0,3,0,3,0,3,0,2,0,2,0,2,
			0,3,0,3,0,3,0,2,0,2,0,2,
		},
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
		    ["auto_whelen_edge_front_inner"] = "1097",
			["auto_whelen_edge_front_corner"] = "1097",
			["auto_whelen_edge_rear_corner"] = "1097",
			["auto_whelen_edge_rear_inner"] = "1097",
			["auto_whelen_edge_front_middle"] = "1097",
		},
		M3 = {
			["auto_whelen_edge_front_inner"] = "1051",
			["auto_whelen_edge_front_corner"] = "1051",
			["auto_whelen_edge_rear_corner"] = "1051",
			["auto_whelen_edge_rear_inner"] = "1051",
			["auto_whelen_edge_front_middle"] = "1051",
		},
	},
	Auxiliary = {},
	Illumination = {
		L = {
			{ 14, SW }
		},
		R = {
			{ 13, SW }
		},
		F = {
			{ 5, SW }, { 6, SW }
		},
		T = {
			{ 5, SW }, { 6, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )