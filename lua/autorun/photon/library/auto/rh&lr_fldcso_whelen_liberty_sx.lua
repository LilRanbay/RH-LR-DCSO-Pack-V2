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

local name = "FLDCSO Whelen Liberty SX"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_refresh.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {
	{1,5},
	{2,1}
}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
    [3] = "AMBER",
    [4] = "WHITE",
	[5] = "BLUE",
	[6] = "RED",
	[7] = "BLUE"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
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
	liberty_f_ang = {
	AngleOffset = -90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 3.5,
		H = 3.5,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1.2,
		Scale = 1,
		EmitArray = {
			Vector( -.55, -.45, 0 ),
			Vector( 0, .5, 0 ),
			Vector( .55, -.45, 0 )
		}
	},
}
 
COMPONENT.Positions = {

	[1] = { Vector( 3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( -3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[3] = { Vector( 11.29, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( -11.29, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[5] = { Vector( 27.97, 5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_f_ang", 1 },
	[6] = { Vector( -27.97, 5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_f_ang", 2 },

	[7] = { Vector( 27.97, -5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_r_ang", 3 },
	[8] = { Vector( -27.97, -5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_r_ang", 4 },
	[9] = { Vector( 18.74, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( -18.74, -8.99, 4.56), Angle( 0, 0, 0 ), "liberty_r_main" },
	[11] = { Vector( 11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[12] = { Vector( -11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[13] = { Vector( 3.82, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( -3.82, -8.99, 4.56  ), Angle( 0, 0, 0 ), "liberty_r_main" },

    [15] = { Vector( 18.67, 9.1, 4.59 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( -18.59, 9.1, 4.59 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -31.81, -0.01, 4.59 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 31.81, -0.01, 4.59 ), Angle( 0, -90, 0 ), "liberty_alley" },

}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		[1] = {
			{ 1, "_2" }, { 2, "_6" }, 
			{ 3, "_5" }, { 4, "_1" },
			{ 5, "_7" }, { 6, "_1" },
			{ 7, "_7" }, { 8, "_1" },
			{ 9, "_3" }, { 10, "_3" },
			{ 11, "_3" }, { 12, "_3" }, 
			{ 13, "_3" }, { 14, "_3" },
			{ 15, "_4" }, { 16, "_4" },
			{ 17, "_4" }, { 18, "_4" },
		},
	},
	["auto_whelen_liberty_sx_steady"] = {
		[1] = {
			{ 3, "_5" }, { 4, "_1" }, 
		},
	},
	["auto_whelen_liberty_sx_front"] = {
		[1] = {
			{ 1, "_2" }, { 2, "_6" },
		},
		[2] = {
			{ 1, "_2" },
		},
		[3] = {
			{ 2, "_6" },
		},
	},
	["auto_whelen_liberty_sx_corners"] = {
		[1] = {
			{ 5, "_7" }, { 6, "_1" },
			{ 7, "_7" }, { 8, "_1" },
		},
		[2] = {
			{ 5, "_7" }, { 7, "_7" },
		},
		[3] = {
			{ 6, "_1" }, { 8, "_1" },
		},
	},
	["auto_whelen_liberty_sx_takedowns"] = {
		[1] = {
			{ 15, "_4" }, { 16, "_4" },
		},
		[2] = {
			{ 15, "_4" },
		},
		[3] = {
			{ 16, "_4" },
		},
	},
	["auto_whelen_liberty_sx_alley"] = {
		[1] = {
			{ 15, "_4" }, { 16, "_4" },
		},
		[2] = {
			{ 17, "_4" },
		},
		[3] = {
			{ 18, "_4" },
		},
	},
	["auto_whelen_liberty_sx_rear"] = {
		[1] = {
			{ 9, "_3" }, { 10, "_3" },
			{ 11, "_3" }, { 12, "_3" }, 
			{ 13, "_3" }, { 14, "_3" },
		},
		[2] = {
			{ 9, "_3" }, { 10, "_3" },
		},
		[3] = {
			{ 9, "_3" }, { 10, "_3" },
			{ 11, "_3" }, { 12, "_3" }, 
		},
		[4] = {
			{ 11, "_3" }, { 12, "_3" },
			{ 13, "_3" }, { 14, "_3" },
		},
		[5] = {
			{ 13, "_3" }, { 14, "_3" },
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
	},
	["auto_whelen_liberty_sx_steady"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
	},
	["auto_whelen_liberty_sx_front"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
		["code3"] = { 
			2,0,2,2,0,3,0,3,3,0
		},
	},
	["auto_whelen_liberty_sx_corners"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
		["code3"] = { 
			2,0,2,0,3,0,3,0
		},
	},
	["auto_whelen_liberty_sx_takedowns"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
		["code3"] = { 
			2,0,2,2,2,2,0,3,0,3,3,3,3,0
		},
	},
	["auto_whelen_liberty_sx_alley"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
		["code3"] = { 
			2,0,2,0,3,0,3,0
		},
	},
	["auto_whelen_liberty_sx_rear"] = {
        ["all"] = { 1 },
		["off"] = { 0 },
		["code6"] = { 
			2,2,2,2,2,0,
			5,5,5,5,5,0,
		},
		["code3"] = { 
			2,3,4,5,
			5,4,3,2
		},
	},
	["auto_whelen_liberty_sx_traffic"] = {
		["all"] = { 1 },
		["off"] = { 0 },
		["right"] = {
			2,2,3,3,4,4,5,5,6,6,7,7,8,8,0,0
		},
		["left"] = {
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
				["auto_whelen_liberty_sx_front"] = "off",
				["auto_whelen_liberty_sx_steady"] = "all",
				["auto_whelen_liberty_sx_corners"] = "off",
				["auto_whelen_liberty_sx_takedowns"] = "off",
				["auto_whelen_liberty_sx_alley"] = "off",
				["auto_whelen_liberty_sx_rear"] = "code6",
			},
			M3 = {
				["auto_whelen_liberty_sx_front"] = "code3",
				["auto_whelen_liberty_sx_steady"] = "all",
				["auto_whelen_liberty_sx_corners"] = "code3",
				["auto_whelen_liberty_sx_takedowns"] = "code3",
				["auto_whelen_liberty_sx_alley"] = "code3",
				["auto_whelen_liberty_sx_rear"] = "code3",
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

-- BITCH

local name = "MSECSO Whelen Liberty SX"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_refresh.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
    [3] = "AMBER",
    [4] = "WHITE"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
		}
	},
	--[[ LED Takedown
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
	]]
	liberty_f_ang = {
	AngleOffset = -90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = 1.5,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
    liberty_takedown = {
		AngleOffset = -90,
		W = 13.5,
		H = 8,
		Sprite = "sprites/emv/lightbar",
		Scale = 0.65,
		WMult = 2.25,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 2.5,
		H = 2.5,
		Sprite = "sprites/emv/light_circle",
		Scale = .5,
		WMult = 1,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 11.29, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( -11.29, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[3] = { Vector( 18.59, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( -18.59, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[5] = { Vector( 27.97, 5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_f_ang", 1 },
	[6] = { Vector( -27.97, 5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_f_ang", 2 },

	[7] = { Vector( 27.97, -5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_r_ang", 3 },
	[8] = { Vector( -27.97, -5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_r_ang", 4 },
	[9] = { Vector( 18.74, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( -18.74, -8.99, 4.56), Angle( 0, 0, 0 ), "liberty_r_main" },
	[11] = { Vector( 11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[12] = { Vector( -11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[13] = { Vector( 3.82, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( -3.82, -8.99, 4.56  ), Angle( 0, 0, 0 ), "liberty_r_main" },

    [15] = { Vector( 3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( -3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -31.81, -0.01, 4.59 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 31.81, -0.01, 4.59 ), Angle( 0, -90, 0 ), "liberty_alley" },

}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		[1] = {
			{ 1, "_2" }, { 2, "_1" }, 
			{ 3, "_2" }, { 4, "_1" },
			{ 5, "_2" }, { 6, "_1" },
			{ 7, "_2" }, { 8, "_1" },
			{ 9, "_2" }, { 10, "_1" },
			{ 11, "_2" }, { 12, "_1" }, 
			{ 13, "_2" }, { 14, "_1" },
		},
		[2] = {
			 { 3, "_2" }, { 5, "_2" }, { 7, "_2" },{ 9, "_2" },
		},
		[3] = {
			 { 4, "_1" }, { 6, "_1" }, { 8, "_1" },{ 10, "_1" },
		},
		[4] = {
			{ 1, "_2" }, { 3, "_2" }, { 5, "_2" }, { 7, "_2" },{ 9, "_2" },{ 11, "_2" }, { 13, "_2" },
		},
		[5] = {
			{ 2, "_1" }, { 4, "_1" }, { 6, "_1" }, { 8, "_1" },{ 10, "_1" },{ 12, "_1" }, { 14, "_1" },
		},
		[6] = {
			{ 1, "_2" }, { 3, "_2" }, { 6, "_1" }, { 8, "_1" },{ 10, "_1" },{ 11, "_2" }, { 13, "_2"} 
		},
		[7] = {
			{ 2, "_1" }, { 4, "_1" }, { 5, "_2" }, { 7, "_2" },{ 9, "_2" },{ 12, "_1" }, { 14, "_1" },
		},
		[8] = {
			 { 1, "_2" }, { 13, "_2" },
		},
		[9] = {
			{ 2, "_1" }, { 14, "_1" },
		},
	},
	["auto_whelen_liberty_sx_corner_illum"] = {
		[1] = {
			{ 15, SW, { 21, 0, 0 } }, { 16, SW, { -21, 0, 0 } }
		}
	},
	["auto_whelen_liberty_sx_corner_td"] = {
		[1] = {
			{ 17, SW, { 21, 0, 0 } }, { 18, SW, { -21, 0, 0 } }
		}
	},
	["auto_whelen_liberty_sx_corner"] = {
		[1] = {
			 { 5, "_2" }, { 7, "_2" },
		},
		[2] = {
			 { 6, "_1" }, { 8, "_1" },
		},
	},
	["auto_whelen_liberty_sx_corner_inner"] = {
		[1] = {
			 { 3, "_2" }, { 9, "_2" },
		},
		[2] = {
			 { 4, "_1" },{ 10, "_1" },
		},
	},
	["auto_whelen_liberty_sx_rear_corner_inner"] = {
		[1] = {
			 { 11, "_2" },
		},
		[2] = {
			 { 12, "_1" },
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
        ["test"] = { 2 },
		["Code1"] = { 3, 3, 0, 2, 2, 0 },
		["Code2"] = { 	5, 5, 0, 4, 4, 0 },
		["Code3_Inner"] = { 0,8,0,8,0,9,0,9,0 },
		["Code3_Outer"] = { 2,0,2,0,3,0,3,0 },
	    ["Left"] = { 10,10,10,11,11,11,12,12,12,13,13,13,14,14,14,15,15,15 },
	},
	["auto_whelen_liberty_sx_corner"] = {
		["code3"] = {
			1,0,1,0,2,0,2,0
		}
	},
	["auto_whelen_liberty_sx_corner_td"] = {
		["code3"] = {
			1
		}
	},
	["auto_whelen_liberty_sx_rear_corner_inner"] = {
		["code3"] = {
			1,0,1,0,2,0,2,0,0,0
		}
	},
	["auto_whelen_liberty_sx_corner_inner"] = {
		["code3"] = {
			1,0,1,0,2,0,2,
		}
	},
	["auto_whelen_liberty_sx_corner_illum"] = {
		["code3"] = {
			1
		}
	},
	["auto_whelen_liberty_sx_traffic"] = {
		["all"] = { 1 },
		["off"] = { 0 },
		["right"] = {
			2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 0, 0, 0
		},
		["left"] = {
			0, 0, 0, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2
		},
		["diverge"] = {
			14, 14, 14, 15, 15, 15, 16, 16, 16, 0, 0, 0
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
				["auto_whelen_liberty_sx"] = "Code1",
			--	["auto_whelen_liberty_sx_corner_illum"] = "code3"
			},
			M2 = {
				["auto_whelen_liberty_sx"] = "Code2",
			},
			M3 = {
				["auto_whelen_liberty_sx"] = "Code2",
				["auto_whelen_liberty_sx_corner_illum"] = "code3",
				["auto_whelen_liberty_sx_corner_td"] = "code3",
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
			{ 18, SW }
		},
		R = {
			{ 17, SW }
		},
		F = {
			{ 15, SW }, { 16, SW }
		},
		T = {
			{ 15, SW }, { 16, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )