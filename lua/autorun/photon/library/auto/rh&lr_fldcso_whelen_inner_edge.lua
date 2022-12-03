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

local name = "FLDCSO Whelen Inner Edge Driver"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/inner_edge_driver.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.UsePhases = true
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "RED"
}

COMPONENT.Meta = {
	outside_light = {
		AngleOffset = -90,
		W = 4.4,
		H = 3.2,
		Sprite = "sprites/emv/emv_1x3",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		WMult = 1.5,
		Scale = .55,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
	inside_lights = {
		AngleOffset = -90,
		W = 5.2,
		H = 9,
		Sprite = "sprites/emv/emv_whelen_corner",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -1.1, 0, 0 ),
			Vector( -.7, 0, 0 ),
			Vector( -.3, 0, 0 ),
			Vector( 1.1, 0, 0 ),
			Vector( .7, 0, 0 ),
			Vector( .3, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 2.3, -10.6, -0.05 ), Angle( 0, 95, 0 ), "outside_light" },
	[2] = { Vector( 1.5, -6.75, 0 ), Angle( 0, 95, 0 ), "inside_lights" },
	[3] = { Vector( 0.7, -3, 0 ), Angle( 0, 95, 0 ), "inside_lights" },
	[4] = { Vector( -0.1, 0.8, 0 ), Angle( 0, 95, 0 ), "inside_lights" },
	[5] = { Vector( -0.9, 4.6, 0 ), Angle( 0, 95, 0 ), "inside_lights" },
	[6] = { Vector( -1.7, 8.4, 0 ), Angle( 0, 95, 0 ), "inside_lights" },

}

COMPONENT.Sections = {
	["auto_inner_edge"] = { 
		[1] = { { 1, SW }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" }, { 6, "_1" }, }, 
	},
	["auto_inner_edge_inner"] = { 
		[1] = { { 2, "_1" }, { 3, "_1" },{ 4, "_1" }, { 5, "_1" }, { 6, "_1" }, },
	},
	["auto_inner_edge_takedown"] = { 
		[1] = { { 1, SW, { 9, 0, 0 } }, },
	},
}

COMPONENT.Patterns = {
	["auto_inner_edge"] = {
		["debug"] = { 1 },
	},
	["auto_inner_edge_inner"] = {
		["debug"] = { 1 },
		["code6"] = { 1 },
		["code3"] = { 1 },
	},
	["auto_inner_edge_takedown"] = {
		["debug"] = { 1 },
		["code6"] = { 0 },
		["code3"] = { 1 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_inner_edge_inner"] = "code6",
				["auto_inner_edge_takedown"] = "code6",
			},
			M3 = {
				["auto_inner_edge_inner"] = "code3",
				["auto_inner_edge_takedown"] = "code3",
			}
		},
	Auxiliary = {},
	Illumination = {
		T = {
			{ 1, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "FLDCSO Whelen Inner Edge Passenger"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/inner_edge_passenger.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.UsePhases = true
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}

COMPONENT.Meta = {
	outside_light = {
		AngleOffset = -90,
		W = 4.4,
		H = 3.2,
		Sprite = "sprites/emv/emv_1x3",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		WMult = 1.5,
		Scale = .55,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
	inside_lights = {
		AngleOffset = -90,
		W = 5.2,
		H = 9,
		Sprite = "sprites/emv/emv_whelen_corner",
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -1.1, 0, 0 ),
			Vector( -.7, 0, 0 ),
			Vector( -.3, 0, 0 ),
			Vector( 1.1, 0, 0 ),
			Vector( .7, 0, 0 ),
			Vector( .3, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 2.3, 10.4, -0.4 ), Angle( 0, 85, 0 ), "outside_light" },
	[2] = { Vector( 1.5, 6.55, -0.3 ), Angle( 1, 83, 0 ), "inside_lights" },
	[3] = { Vector( 0.7, 2.8, -0.15 ), Angle( 1, 83, 0 ), "inside_lights" },
	[4] = { Vector( -0.1, -1, -0.1 ), Angle( 1.4, 83, 0 ), "inside_lights" },
	[5] = { Vector( -0.9, -4.85, 0 ), Angle( 1, 83, 0 ), "inside_lights" },
	[6] = { Vector( -1.7, -8.65, 0.1 ), Angle( 1, 83, 0 ), "inside_lights" },

}

COMPONENT.Sections = {
	["auto_inner_edge"] = { 
		[1] = { { 1, W }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" }, { 6, "_1" }, }, 
	},
	["auto_inner_edge_inner"] = { 
		[1] = { { 2, "_1" }, { 3, "_1" },{ 4, "_1" }, { 5, "_1" }, { 6, "_1" }, },
	},
	["auto_inner_edge_takedown"] = { 
		[1] = { { 1, SW, { -9, 0, 0 } }, },
	},
}

COMPONENT.Patterns = {
	["auto_inner_edge"] = {
		["debug"] = { 1 },
	},
	["auto_inner_edge_inner"] = {
		["debug"] = { 1 },
		["code6"] = { 0 },
		["code3"] = { 1,0,1,0,1,0,1,0,0,0,0,0,0,0 },
	},
	["auto_inner_edge_takedown"] = {
		["debug"] = { 1 },
		["code6"] = { 0 },
		["code3"] = { 1 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_inner_edge_inner"] = "code6",
				["auto_inner_edge_takedown"] = "code6",
			},
			M3 = {
				["auto_inner_edge_inner"] = "code3",
				["auto_inner_edge_takedown"] = "code3",
			}
		},
	Auxiliary = {},
	Illumination = {
		T = {
			{ 1, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )