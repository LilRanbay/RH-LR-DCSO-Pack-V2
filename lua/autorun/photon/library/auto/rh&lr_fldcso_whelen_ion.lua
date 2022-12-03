-- Edited by LilRanbay
AddCSLuaFile()

local name = "FLDCSO Whelen Ion"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/ion.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
    [2] = "WHITE"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 6.14,
		H = 6.14,
		Sprite = "sprites/emv/whelen_ion_left_new",
		WMult = 1,
		Scale = .3,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 6.14,
		H = 6.14,
		Sprite = "sprites/emv/whelen_ion_right_new",
		WMult = 1,
		Scale = .3,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.3, 0, 0 ), Angle( 0, 0, 0 ), "auto_ion_left" },
	[2] = { Vector( -1.3, 0, 0 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1" }, { 2, "_1" },  },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
		[4] = { { 1, "_1" }, { 2, "_2" },  },
		[5] = { { 1, "_2" }, { 2, "_2" },  },
	}
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1097A"] = { 1 },
		["1097B"] = { 1 },
		["1097SA"] = { 4 },
		["1097SB"] = { 4 },
		["1097SC"] = { 4 },
		["1097SD"] = { 4 },
		
		["1051"] = { 1 },
		["1051A"] = { 1,1,1,1,1,1,0,0,0,0,0,0,0,0 },
		["1051B"] = { 0,0,0,0,0,0,0,1,1,1,1,1,1,0 },
		["1051SA"] = { 2,0,2,0,2,0,2,3,0,3,0,3,0,3 },
		["1051SB"] = { 3,0,3,0,3,0,3,2,0,2,0,2,0,2 },
		["1051SC"] = { 3,2,0,2,0,2,0,2,3,0,3,0,3,0 },
		["1051SD"] = { 2,3,0,3,0,3,0,3,2,0,2,0,2,0  },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_ion"] = "1097",
			},
			M3 = {
				["auto_ion"] = "1051",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )