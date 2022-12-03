AddCSLuaFile()

local R = "RED"
local B = "BLUE"
local W = "WHITE"

local name = "FLDCSO Whelen Slimlighter"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/whelen_slimlighter.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "RED",
    [2] = "WHITE"
}

COMPONENT.Meta = {
	auto_int_lb = {
		W = 10,
		H = 4,
		Sprite = "sprites/emv/whelen_slimlighter",
		WMult = 1,
		Scale = .35,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		EmitArray = {
			Vector( -2.6, 0.2, 0 ),
			Vector( -1.6, -0.3, 0 ),
			Vector( -0.55, 0.2, 0 ),
			Vector( 0.45, -0.3, 0 ),
			Vector( 1.5, 0.2, 0 ),
			Vector( 2.5, -0.3, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.3, -9, 2.4 ), Angle( 0, 90, 0 ), "auto_int_lb" },
	[2] = { Vector( 1.3, 7, 2.4 ), Angle( 0, 90, 0 ), "auto_int_lb" },

}

COMPONENT.Sections = {
	["auto_whelen_sl"] = {
		[1] = { { 1, "_1" }, { 2, "_2" },  },
		[2] = { { 1, "_1" }  },
		[3] = { { 2, "_2" }  },
		
		-- PARK --
		[4] = { { 1, "_1", { 8, 0.35, 0 } }, { 2, "_2", { -8, 0.35, 0 } },  },
		[5] = { { 1, "_1", { -8, 0.35, 0 } }, { 2, "_2", { 8, 0.35, 0 } },  },
	},
}

COMPONENT.Patterns = {
    ["auto_whelen_sl"] = {
		["all"] = { 1 },
		
		["park"] = { 1 },
		--
		["parkFA"] = { 4 },
		["parkFB"] = { 4 },
		["parkFC"] = { 5 },
		["parkFD"] = { 5 },
		--
		["parkRA"] = { 4 },
		["parkRB"] = { 4 },
		["parkRC"] = { 5 },
		["parkRD"] = { 5 },
		
		
		["rear"] = { 1 },
		--
		["rearFA"] = { 0 },
		["rearFB"] = { 0 },
		["rearFC"] = { 0 },
		["rearFD"] = { 0 },
		--
		["rearRA"] = { 2,0,2,0,2,0,3,0,3,0,3,0 },
		["rearRB"] = { 3,0,3,0,3,0,2,0,2,0,2,0 },
		["rearRC"] = { 0,2,0,2,0,2,0,3,0,3,0,3 },
		["rearRD"] = { 0,3,0,3,0,3,0,2,0,2,0,2 },
		
		
		["response"] = { 1 },
		--
		["responseFA"] = { 2,0,2,0,2,0,3,0,3,0,3,0 },
		["responseFB"] = { 3,0,3,0,3,0,2,0,2,0,2,0 },
		["responseFC"] = { 0,2,0,2,0,2,0,3,0,3,0,3 },
		["responseFD"] = { 0,3,0,3,0,3,0,2,0,2,0,2 },
		--
		["responseRA"] = { 2,0,2,0,2,0,3,0,3,0,3,0 },
		["responseRB"] = { 3,0,3,0,3,0,2,0,2,0,2,0 },
		["responseRC"] = { 0,2,0,2,0,2,0,3,0,3,0,3 },
		["responseRD"] = { 0,3,0,3,0,3,0,2,0,2,0,2 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_sl"] = "park",
			},
			M2 = {
				["auto_whelen_sl"] = "rear",
			},
			M3 = {
				["auto_whelen_sl"] = "response",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )