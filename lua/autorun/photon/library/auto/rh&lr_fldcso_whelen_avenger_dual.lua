AddCSLuaFile()

local R = "RED"
local B = "BLUE"

local name = "FLDCSO Whelen Avenger Dual"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/dashlight_double.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.SubMaterials = {
	[0] = "rh&lr/improved_whelen_lights/lights",
}

COMPONENT.Meta = {
	auto_avenger = {
		AngleOffset = 90,
		W = 25,
		H = 31,
		Sprite = "rh&lr/sprites/whelen_lin6",
		WMult = 0.5,
		Scale = .35,
		EmitArray = {
			Vector( 7.2, 0, 0 ),
			Vector( 4.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( -7.2, 0, 0 ),
			Vector( -4.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 2.4, 10.55, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },
	[2] = { Vector( 2.4, -10.55, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },

}

COMPONENT.Sections = {
	["auto_whelen_avenger"] = {
		[1] = {
			{1, "_1" }, {2, "_2" }
		},
		[2] = {
			{1, "_1" }
		},
		[3] = {
			{2, "_2" }
		}
	}
}

COMPONENT.Patterns = {
	["auto_whelen_avenger"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1097A"] = { 1 },
		["1097B"] = { 1 },
		["1097OLDA"] = { 1 },
		["1097OLDB"] = { 1 },
		["1097OLDC"] = { 1 },
		["1097OLDD"] = { 1 },
		
		["1051"] = { 1 },
		["1051A"] = { 2,2,2,2,2,3,3,3,3,3 },
		["1051B"] = { 3,3,3,3,3,2,2,2,2,2 },
		["1051OLDA"] = { 2,2,2,0,0,3,3,3,0,0 },
		["1051OLDB"] = { 3,3,3,0,0,2,2,2,0,0 },
		["1051OLDC"] = { 0,0,2,2,2,0,0,3,3,3 },
		["1051OLDD"] = { 0,0,3,3,3,0,0,2,2,2 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_avenger"] = "1097",
			},
			M3 = {
				["auto_whelen_avenger"] = "1051",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )