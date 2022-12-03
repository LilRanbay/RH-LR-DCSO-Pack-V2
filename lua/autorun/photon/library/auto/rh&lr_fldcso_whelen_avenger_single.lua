AddCSLuaFile()

local R = "RED"
local B = "BLUE"

local name = "FLDCSO Whelen Avenger Single"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/dashlight_single.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "WHITE",
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

	[1] = { Vector( 1.9, 0, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },

}

COMPONENT.Sections = {
	["auto_whelen_avenger"] = {
		[1] = {
			{1, "_1" }
		},
		[2] = {
			{1, "_2" }
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_avenger"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1097A"] = { 1 },
		["1097B"] = { 1 },
		
		["1051"] = { 1 },
		["1051A"] = { 1,1,1,1,1,0,0,0,0,0 },
		["1051B"] = { 0,0,0,0,0,1,1,1,1,1 },
		
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