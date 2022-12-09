AddCSLuaFile()

local name = "FLDCSO Whelen Freedom"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/freedom_lightbar.mdl"
COMPONENT.NotLegacy = true
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER"
}

COMPONENT.SubMaterials = {
	[0] = "rh&lr/improved_whelen_lights/schmal_freedom/freedom_lights",
	[3] = "rh&lr/improved_whelen_lights/schmal_freedom/freedom_lights",
	[5] = "rh&lr/improved_whelen_lights/glass_color/clear_glass"
	--[5] = "rh&lr/fldcso/freedom_glass"
}

COMPONENT.Meta = {
	freedom_f_main = {
		AngleOffset = -90,
		W = 6.6,
		H = 6.6,
		Sprite = "sprites/emv/freedom_main",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.25, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 0.75, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -2.25, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -0.75, 0, 0 ),
		}
	},
	freedom_takedown = {
		AngleOffset = -90,
		W = 3.9,
		H = 3.9,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1,
		EmitArray = {
			Vector( -.58, -.45, 0 ),
			Vector( 0, .5, 0 ),
			Vector( .58, -.45, 0 )
		}
	},
	freedom_alley = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1,
		EmitArray = {
			Vector( -.55, -.45, 0 ),
			Vector( 0, .5, 0 ),
			Vector( .55, -.45, 0 )
		}
	},
	freedom_f_ang = {
		AngleOffset = -90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/freedom_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3.875, 0, 0 ),
			Vector( 2.9, 0, 0 ),
			Vector( 1.95, 0, 0 ),
			Vector( 0.975, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3.875, 0, 0 ),
			Vector( -2.9, 0, 0 ),
			Vector( -1.95, 0, 0 ),
			Vector( -0.975, 0, 0 ),
		}
	},
	freedom_r_ang = {
		AngleOffset = 90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/freedom_corner",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 3.875, 0, 0 ),
			Vector( 2.9, 0, 0 ),
			Vector( 1.95, 0, 0 ),
			Vector( 0.975, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3.875, 0, 0 ),
			Vector( -2.9, 0, 0 ),
			Vector( -1.95, 0, 0 ),
			Vector( -0.975, 0, 0 ),
		}
	},
	freedom_r_main = {
		AngleOffset = 90,
		W = 6.6,
		H = 6.6,
		Sprite = "sprites/emv/freedom_main",
		Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.25, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 0.75, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -2.25, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -0.75, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -3.61, 7.54, 0.32 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[2] = { Vector( 3.61, 7.54, 0.32 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[3] = { Vector( -16.63, 7.54, 0.32 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[4] = { Vector( 16.63, 7.54, 0.32 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[5] = { Vector( -25.91, 5.03, 0.34 ), Angle( 0, 33, 0 ), "freedom_f_ang" },
	[6] = { Vector( 25.91, 5.03, 0.34 ), Angle( 0, -33, 0 ), "freedom_f_ang" },

	[7] = { Vector( -25.91, -4.72, 0.34 ), Angle( 0, -33, 0 ), "freedom_r_ang" },
	[8] = { Vector( 25.91, -4.72, 0.34 ), Angle( 0, 33, 0 ), "freedom_r_ang" },

	[9] = { Vector( -16.63, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[10] = { Vector( 16.63, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[11] = { Vector( -10.12, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[12] = { Vector( 10.12, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[13] = { Vector( -3.52, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[14] = { Vector( 3.52, -7.23, 0.32 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[15] = { Vector( -3.61, 7.54, 2.15 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[16] = { Vector( 3.61, 7.54, 2.15 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[17] = { Vector( -16.63, 7.54, 2.15 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[18] = { Vector( 16.63, 7.54, 2.15 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[19] = { Vector( -25.91, 5.03, 2.15 ), Angle( 0, 33, 0 ), "freedom_f_ang" },
	[20] = { Vector( 25.91, 5.03, 2.15 ), Angle( 0, -33, 0 ), "freedom_f_ang" },

	[21] = { Vector( -25.91, -4.72, 2.15 ), Angle( 0, -33, 0 ), "freedom_r_ang" },
	[22] = { Vector( 25.91, -4.72, 2.15 ), Angle( 0, 33, 0 ), "freedom_r_ang" },

	[23] = { Vector( -16.63, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[24] = { Vector( 16.63, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[25] = { Vector( -10.12, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[26] = { Vector( 10.12, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[27] = { Vector( -3.61, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[28] = { Vector( 3.61, -7.23, 2.15 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[29] = { Vector( -30.85, 0.12, 2.08 ), Angle( 0, 90, 0 ), "freedom_alley" },
	[30] = { Vector( 30.85, 0.12, 2.08 ), Angle( 0, -90, 0 ), "freedom_alley" },

	[31] = { Vector( -30.85, 0.12, 0.27 ), Angle( 0, 90, 0 ), "freedom_alley" },
	[32] = { Vector( 30.85, 0.12, 0.27 ), Angle( 0, -90, 0 ), "freedom_alley" },

	[33] = { Vector( -8.82, 7.11, 1.08 ), Angle( 0, 0, 0 ), "freedom_takedown" },
	[34] = { Vector( 8.82, 7.11, 1.08 ), Angle( 0, 0, 0 ), "freedom_takedown" },

	[35] = { Vector( -11.29, 7.11, 1.08 ), Angle( 0, 0, 0 ), "freedom_takedown" },
	[36] = { Vector( 11.29, 7.11, 1.08 ), Angle( 0, 0, 0 ), "freedom_takedown" },
}

COMPONENT.Sections = {
	["auto_whelen_ultra_freedom"] = {
		[1] = {
			-- BOTTOM
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2" }, { 4, "_2" }, 
			{ 5, "_2" }, { 6, "_2" }, 
			{ 7, "_2" }, { 8, "_2" }, 
			{ 9, "_4" }, { 10, "_4" }, 
			{ 11, "_4" }, { 12, "_4" }, 
			{ 13, "_4" }, { 14, "_4" },
			
			-- TOP
			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" }, { 18, "_2" }, 
			{ 19, "_2" }, { 20, "_2" }, 
			{ 21, "_2" }, { 22, "_2" }, 
			{ 23, "_1" }, { 24, "_2" }, 
			{ 25, "_2" }, { 26, "_1" }, 
			{ 27, "_1" }, { 28, "_2" },
			
			-- ALLEY
			{ 29, "_3" }, { 30, "_3" }, 
			{ 31, "_3" }, { 32, "_3" }, 
			
			-- TAKEDOWNS
			{ 33, "_3" }, { 34, "_3" }, 
			{ 35, "_3" }, { 36, "_3" },
		},
	},
	["auto_whelen_ultra_freedom_traffic"] = {
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		
		-- LEFT & RIGHT (From 2 to 12) --
		{ { 9, "_4" } },
		{ { 9, "_4" }, { 11, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" }, { 14, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 13, "_4" }, { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 12, "_4" }, { 10, "_4" } },
		{ { 10, "_4" } },
		
		-- DIVERGE (From 13 to 17) --
		{ { 13, "_4" }, { 14, "_4" } },
		{ { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 13, "_4" }, { 14, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 9, "_4" }, { 11, "_4" }, { 12, "_4" }, { 10, "_4" } },
		{ { 9, "_4" }, { 10, "_4" } },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_ultra_freedom"] = {
		["debug"] = { 1 }
	},
	["auto_whelen_ultra_freedom_traffic"] = {
		["debug"] = { 1 },
		
		["left"] = { 12,12,11,11,10,10,9,9,8,8,7,7,6,6,5,5,4,4,3,3,2,2,0,0,0 },
		["diverge"] = { 13,13,13,14,14,14,15,15,15,16,16,16,17,17,17,0,0,0 },
		["right"] = { 2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,0,0,0 },
	},
}

COMPONENT.TrafficDisconnect = {
	["auto_whelen_ultra_freedom_traffic"] = {
		9, 10, 11, 12, 13, 14
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_ultra_freedom"] = "debug",
			},
			M3 = {
				["auto_whelen_ultra_freedom"] = "debug",
			}
		},
	Auxiliary = {
			L = { ["auto_whelen_ultra_freedom_traffic"] = "left" },
			R = { ["auto_whelen_ultra_freedom_traffic"] = "right" },
			D = { ["auto_whelen_ultra_freedom_traffic"] = "diverge" }
		},
	Illumination = {
		T = {
			{ 33, W }, { 34, W }, { 35, W }, { 36, W }
		},
		F = {
			{ 33, W }, { 34, W }, { 35, W }, { 36, W }
		},
		L = {
			{ 31, W }, { 29, W }
		},
		R = {
			{ 32, W }, { 30, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )