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

local name = "FLDCSO Whelen Liberty ii"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty_ii.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {
	{3,1}
}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
    [3] = "AMBER",
    [4] = "WHITE",
	[5] = "BLUE"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8.5,
		H = 8.5,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .45,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 7.4,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_6x2",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 2.65, -.5, 0 ),
			Vector( 1.55, -.5, 0 ),
			Vector( 0.5, -.5, 0 ),
			Vector( -2.65, -.5, 0 ),
			Vector( -1.55, -.5, 0 ),
			Vector( -0.5, -.5, 0 ),
			
			Vector( 2.65, .5, 0 ),
			Vector( 1.55, .5, 0 ),
			Vector( 0.5, .5, 0 ),
			Vector( -2.65, .5, 0 ),
			Vector( -1.55, .5, 0 ),
			Vector( -0.5, .5, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 3.2,
		H = 3.2,
		Sprite = "sprites/emv/emv_whelen2_alley",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 0, -.85, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, .85, 0 ),
		}
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 13.3,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 13.3,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 9,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .45,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -11.35, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( 11.35, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[3] = { Vector( -18.45, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( 18.45, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[5] = { Vector( -26, 3.53, 0.4 ), Angle( 0, 47.18, 0 ), "liberty_f_ang" },
	[6] = { Vector( 26, 3.53, 0.4 ), Angle( 0, -47.18, 0  ), "liberty_f_ang" },

	[7] = { Vector( -26, -3.53, 0.4 ), Angle( 0, -47.18, 0 ), "liberty_r_ang" },
	[8] = { Vector( 26, -3.53, 0.4 ), Angle( 0, 47.18, 0 ), "liberty_r_ang" },

	[9] = { Vector( -18.25, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( 18.25, -6.1, 0.35  ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[11] = { Vector( -11.1, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red
	[12] = { Vector( 11.1, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red

	[13] = { Vector( -4.2, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( 4.2, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[15] = { Vector( -4.2, 6.2, 0.45 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( 4.2, 6.2, 0.39 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -28.7, 0, 0.39 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 28.7, 0, 0.39 ), Angle( 0, -90, 0 ), "liberty_alley" },

}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		{
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_1" }, { 8, "_2" },
			{ 9, A }, { 10, A },
			{ 11, A }, { 12, A },
			{ 13, A }, { 14, A },
			{ 15, W }, { 16, W },
			{ 17, W }, { 18, W }
		},
		{
			{ 2, "_2" },
			{ 6, "_2" },
			{ 7, "_1" }, 
			{ 10, A },
			{ 12, A },
			{ 14, A },
			{ 16, W },
			{ 18, W }
		},
		{
			{ 1, "_1" }, 
			{ 5, "_1" }, 
			{ 8, "_2" },
			{ 9, A },
			{ 11, A }, 
			{ 13, A }, 
			{ 15, W }, 
			{ 17, W }, 
		},
		{
			{ 9, A }, 
			{ 11, A }, 
		},
		{
			{ 10, A },
			{ 12, A },
		},
	},
	["auto_whelen_liberty_sx_steady"] = {
		{
			{ 3, "_1" }, { 4, "_2" },
		},
	},
	["auto_whelen_liberty_sx_traffic"] = {
		[1] = { 
			{ 9, A }, { 10, A }, { 11, A }, { 12, A }, { 13, A }, { 14, A }
		},
		-- Left & Right
		[2] = {
			{ 10, A }
		},
		[3] = {
			{ 10, A }, { 12, A }
		},
		[4] = {
			{ 12, A }, { 14, A } 
		},
		[5] = {
			{ 14, A }, { 13, A }
		},
		[6] = {
			{ 11, A }, { 13, A }
		},
		[7] = {
			{ 9, A }, { 11, A }
		},
		[8] = {
			{ 9, A }
		},
		-- Left Etc
		[9] = {
			{ 9, A }, { 10, A }
		},
		[10] = {
			{ 9, A }, { 10, A }, { 12, A }
		},
		[11] = {
			{ 9, A }, { 12, A }, { 14, A }
		},
		[12] = {
			{ 9, A }, { 14, A }, { 13, A }
		},
		[13] = {
			{ 9, A }, { 11, A }, { 13, A }
		},
		-- Diverge 1
		[14] = {
			{ 13, A }, { 14, A }
		},
		[15] = {
			{ 11, A }, { 12, A }
		},
		[16] = {
			{ 9, A }, { 10, A }
		},
		[17] = {
			{ 9, A }, { 10, A }, { 13, A }, { 14, A }
		},
		[18] = {
			{ 9, A }, { 10, A }, { 11, A }, { 12, A }
		},
		-- Right etc
		[19] = {
			{ 10, A }, { 9, A }, { 11, A }
		},
		[20] = {
			{ 10, A }, { 11, A }, { 13, A }
		},
		[21] = {
			{ 10, A }, { 13, A }, { 14, A }
		},
		[22] = {
			{ 10, A }, { 12, A }, { 14, A }
		},
		[23] = { 
			{ 9, A }, { 11, A }, { 13, A }
		},
		[24] = { 
			{ 12, A }, { 10, A }, { 14, A }
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_liberty_sx"] = {
		["all"] = { 1 },
		["off"] = { 0 },
		["code6"] = { 
			4,4,4,4,4,0,4,0,
			5,5,5,5,5,0,5,0,
		},
		["code3"] = { 
			2,2,2,2,2,0,3,3,3,3,3,0,
			2,2,2,2,2,0,3,3,3,3,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,2,0,2,0,3,0,3,0,3,0,
		},
	},
	["auto_whelen_liberty_sx_steady"] = {
		["all"] = { 1 },
		["off"] = { 0 },
	},
	["auto_whelen_liberty_sx_traffic"] = {
		["all"] = { 1 },
		["off"] = { 0 },
		["left"] = {
			2,2,3,3,4,4,5,5,6,6,7,7,8,8,0,0
		},
		["right"] = {
			8,8,7,7,6,6,5,5,4,4,3,3,2,2,0,0
		},
		["diverge"] = {
			14,14,14,15,15,15,16,16,16,0,0,0
		},
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_whelen_liberty_sx_traffic"] = {
		9, 10, 11, 12, 13, 14
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_liberty_sx"] = "code6",
				["auto_whelen_liberty_sx_steady"] = "all",
			},
			M3 = {
				["auto_whelen_liberty_sx"] = "code3",
				["auto_whelen_liberty_sx_steady"] = "all",
			}
		},
	Auxiliary = {
			L = {
				["auto_whelen_liberty_sx_traffic"] = "left"
			},
			R = {
				["auto_whelen_liberty_sx_traffic"] = "right"
			},
			D = {
				["auto_whelen_liberty_sx_traffic"] = "diverge"
			}
		},
	Illumination = {
		L = {
			{ 17, W }
		},
		R = {
			{ 18, W }
		},
		F = {
			{ 15, W }, { 16, W }
		},
		T = {
			{ 15, W }, { 16, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
