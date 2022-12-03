-- Edited by LilRanbay
AddCSLuaFile()

local name = "FLDCSO Whelen LINZ3"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_linz3.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
}

COMPONENT.Meta = {
	whelen_linz3 = {
		AngleOffset = -90,
		W = 5.05,
		H = 5.05,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( -1.435, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1.435, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -0.8, 0, 0 ), Angle( 0, 90, 0 ), "whelen_linz3" },

}

COMPONENT.Sections = {
	["auto_whelen_linz3"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 1, "_2" }  },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_linz3"] = {
		["park"] = { 1 },
		["parkCVPI10A"] = { 1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,0,0 },
		["parkCVPI10B"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		
		["code3"] = { 1 },
		["code3CVPI10A"] = { 1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,0,0 },
		["code3CVPI10B"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_linz3"] = "park",
			},
			M3 = {
				["auto_whelen_linz3"] = "code3",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
